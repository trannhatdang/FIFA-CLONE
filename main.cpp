#define SDL_MAIN_USE_CALLBACKS 1
#include <SDL3/SDL.h>
#include <SDL3/SDL_main.h>
#include <iostream>
#include <vector>
#include <memory>
#include "engine/scene.h"
#include "config.h"
#include "custom_scene.h"

static SDL_Renderer* renderer = nullptr;
static SDL_Window* window = nullptr;
static std::shared_ptr<Scene> scenes[10];
static std::shared_ptr<Scene> currScene;

static void ChangeScene(int index)
{
	currScene = scenes[index];
}

SDL_AppResult SDL_AppInit(void **appstate, int argc, char** argv)
{
	char windowCaption[5] = "game";
	window = SDL_CreateWindow(windowCaption, GetWindowWidth(), GetWindowHeight(), SDL_WINDOW_RESIZABLE);

	if(window == NULL){
		fprintf(stderr, "SDL_CreateWindow failed:%s", SDL_GetError());
		return SDL_APP_FAILURE;
	}

	renderer = SDL_CreateRenderer(window, NULL);

	if(renderer == NULL)
	{
		fprintf(stderr, "SDL_CreateRenderer failed:%s", SDL_GetError());
		return SDL_APP_FAILURE;
	}

	SDL_SetRenderLogicalPresentation(renderer, 1280, 720, SDL_LOGICAL_PRESENTATION_LETTERBOX);

	scenes[0] = std::make_shared<Scene>("IntroScene");
	scenes[1] = std::make_shared<Scene>("MenuScene");
	scenes[2] = std::make_shared<Scene>("GameScene");
	scenes[3] = std::make_shared<Scene>("OptionsScene");

	GenerateGameScene(scenes[2]);

	ChangeScene(2); //Straight into game scene

	return SDL_APP_CONTINUE;
}

SDL_AppResult SDL_AppIterate(void *appstate)
{
	currScene->OnIterate();
	return SDL_APP_CONTINUE;
}

SDL_AppResult SDL_AppEvent(void *appstate, SDL_Event *event)
{
	if (event->type == SDL_EVENT_QUIT)
	{
		return SDL_APP_SUCCESS;
	}
	currScene->OnEvent(event);
	return SDL_APP_CONTINUE;
}

void SDL_AppQuit(void *appstate, SDL_AppResult result)
{

}
