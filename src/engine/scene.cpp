#include "engine/scene.h"

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

void Scene::OnEvent()
{
	for(auto gb : this->m_gameObjects)
	{
		gb->OnEvent();
	}
}
