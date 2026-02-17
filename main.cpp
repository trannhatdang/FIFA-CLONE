#define SDL_MAIN_USE_CALLBACKS 1
#include <SDL3/SDL.h>
#include <SDL3/SDL_main.h>
#include <iostream>
#include <vector>
#include "scene.h"
#include "config.h"

static SDL_Renderer* renderer = nullptr;
static SDL_Window* window = nullptr;
static std::vector<std::unique_ptr<Scene>> scenes;

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

	return SDL_APP_CONTINUE;
}

SDL_AppResult SDL_AppIterate(void *appstate)
{
	return SDL_APP_CONTINUE;
}

SDL_AppResult SDL_AppEvent(void *appstate, SDL_Event *event)
{
	if (event->type == SDL_EVENT_QUIT)
	{
		return SDL_APP_SUCCESS;
	}
	return SDL_APP_CONTINUE;
}

void SDL_AppQuit(void *appstate, SDL_AppResult result)
{

}
