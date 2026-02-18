#ifndef SCENE_H_
#define SCENE_H_

#include "g_object.h"

class Scene
{
	private:
		std::vector<std::shared_ptr<GameObject>> m_gameObjects;
		std::string m_name;
		void (*m_changeSceneCallback)(int);
	public:
		Scene(const std::string& name = "Scene", void (*changeSceneCallback)(int) = nullptr);
		void OnIterate();
		void OnDraw();
		void OnEvent(SDL_Event*& event);
		void AddGameObject();
		std::shared_ptr<GameObject>& GetGameObject(int index = 0);
};

#endif
