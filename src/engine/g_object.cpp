#include "engine/g_object.h"

GameObject::GameObject(std::string name)
{
	this->m_name = name;
}

void GameObject::OnIterate()
{
	for(auto it : m_components)
	{
		it->OnIterate();
	}
}

void GameObject::OnDraw()
{
	for(auto it : m_components)
	{
		it->OnDraw();
	}
}

void GameObject::OnEvent(const SDL_Event*& event)
{
	for(auto it : m_components)
	{
		it->OnEvent(event);
	}
}
