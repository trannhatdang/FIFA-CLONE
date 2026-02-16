#include <iostream>
#include <memory>
#include <SDL3/SDL.h>

const int WINDOW_WIDTH = 1200;
const int WINDOW_HEIGHT = 800;

SDL_Renderer* renderer = nullptr;
SDL_Window* window = nullptr;

void initRenderer(char *windowCaption)
{
	window = SDL_CreateWindow(windowCaption, WINDOW_WIDTH, WINDOW_HEIGHT, SDL_WINDOW_RESIZABLE);

	if(window == NULL){
		fprintf(stderr,"SDL_CreateWindow failed:%s",SDL_GetError());
		exit(1);
	}

	renderer = SDL_CreateRenderer(window, NULL);

	if(renderer == NULL)
	{
		fprintf(stderr,"SDL_CreateRenderer failed:%s",SDL_GetError());
		exit(1);
	}
}

int main(int argc, char** argv)
{

}
