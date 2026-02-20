#ifndef DG_TEXTURE_H_
#define DG_TEXTURE_H_

#include <SDL3/SDL.h>
#include <memory>
#include <string>

class DG_Texture
{
	private:
		SDL_Texture* m_texture;
	public:
		DG_Texture(SDL_Texture* texture = nullptr);
		~DG_Texture();
};
std::shared_ptr<SDL_Texture> CreateTextureFromPNG(const std::string& filepath);


#endif
