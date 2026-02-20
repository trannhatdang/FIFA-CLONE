#include "engine/dg_texture.h"

DG_Texture::DG_Texture(SDL_Texture* texture) : m_texture(texture)
{
	
}

DG_Texture::~DG_Texture()
{
	SDL_DestroyTexture(m_texture);
}

std::shared_ptr<DG_Texture> CreateTextureFromPNG(SDL_Renderer* renderer, const std::string& filepath)
{
	SDL_Surface* surface = SDL_LoadPNG(filepath.c_str());
	if(!surface)
	{
		SDL_Log("Could not create surface for texture creation.");
		return nullptr;
	}

	std::shared_ptr<DG_Texture> texture(new DG_Texture(SDL_CreateTextureFromSurface(renderer, surface)));
	SDL_DestroySurface(surface);
	return texture;
}
