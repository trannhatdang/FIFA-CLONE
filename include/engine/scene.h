#ifndef SCENE_H_
#define SCENE_H_

#include <vector>
#include "g_object.h"

class Scene
{
	protected:
		std::vector<GameObject*> _gameObjects;
	public:
		Scene();
		Scene(void (*changeSceneCallback)(int));
		virtual void OnIterate();
		virtual void OnDraw();
		virtual void OnEvent();
};

#endif
