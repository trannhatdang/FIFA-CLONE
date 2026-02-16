#include <config.h>
#include <SDL3/SDL.h>
#include <SDL3/SDL_main.h>
#define SDL_MAIN_USE_CALLBACKS

static SDL_Renderer* renderer = nullptr;
static SDL_Window* window = nullptr;

SDL_AppResult SDL_AppInit(void **appstate, int argc, char** argv)
{
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
	return SDL_APP_CONTINUE;
}

SDL_AppResult SDL_AppQuit(void *appstate, SDL_AppResult result)
{

}
