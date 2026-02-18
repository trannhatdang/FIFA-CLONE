#include "engine/g_object.h"

GameObject::GameObject(std::string name)
{
	this->m_name = name;
}

void GameObject::OnIterate()
{
	for(std::shared_ptr<Component> it : m_components)
	{
		it->OnIterate();
	}
}

void GameObject::OnDraw()
{
	for(std::shared_ptr<Component> it : m_components)
	{
		it->OnDraw();
	}
}

void GameObject::OnEvent(SDL_Event* event)
{
	for(std::shared_ptr<Component> it : m_components)
	{
		it->OnEvent(event);
	}
}
