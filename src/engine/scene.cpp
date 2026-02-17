#include "engine/scene.h"

Scene::Scene(const std::string& name, void (*changeSceneCallback)(int) = nullptr)
{
	this->m_name = name;
	this->m_changeSceneCallback = changeSceneCallback;
}

void Scene::OnIterate()
{
	for(auto gb : this->m_gameObjects)
	{
		gb->OnIterate();
	}
}

void Scene::OnDraw()
{
	for(auto gb : this->m_gameObjects)
	{
		gb->OnDraw();
	}
}

void Scene::OnEvent(SDL_Event* event)
{
	for(auto gb : this->m_gameObjects)
	{
		gb->OnEvent(event);
	}
}
