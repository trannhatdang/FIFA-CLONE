#include "engine/scene.h"

Scene::Scene(const std::string& name, void (*changeSceneCallback)(int))
{
	this->m_name = name;
	this->m_changeSceneCallback = changeSceneCallback;
}

Scene::~Scene()
{

}

void Scene::OnStart()
{
	for(auto it: m_gameObjects)
	{
		it->OnStart();
	}
}

void Scene::OnIterate()
{
	int size = m_gameObjects.size();
	for(int i = 0; i < size; ++i)
	{
		m_gameObjects[i]->OnIterate();
	}
}

void Scene::OnDraw()
{
	int size = m_gameObjects.size();
	for(int i = 0; i < size; ++i)
	{
		m_gameObjects[i]->OnDraw();
	}
}

void Scene::OnEvent(SDL_Event* event)
{
	int size = m_gameObjects.size();
	for(int i = 0; i < size; ++i)
	{
		m_gameObjects[i]->OnEvent(event);
	}
}

void Scene::AddGameObject()
{
	this->m_gameObjects.push_back(std::make_unique<GameObject>());
}

std::shared_ptr<GameObject>& Scene::GetGameObject(int index)
{
	return this->m_gameObjects[index];
}
