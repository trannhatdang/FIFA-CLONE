#ifndef SCENE_H_
#define SCENE_H_

#include "engine/dg_engine_std.h"
#include "engine/g_object.h"

class Scene
{
	private:
		std::vector<GameObject*> m_gameObjects;
		std::string m_name;
	public:
		Scene();
		Scene(const std::string& name, void (*changeSceneCallback)(int) = nullptr);
		void OnIterate();
		void OnDraw();
		void OnEvent();
};

#endif
