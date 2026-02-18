#ifndef G_OBJECT_
#define G_OBJECT_

#include "component.h"

class GameObject
{
	private:
		std::vector<std::shared_ptr<Component>> m_components;
		std::string m_name;
	public:
		GameObject(std::string name = "GameObject");
		void OnIterate();
		void OnDraw();
		void OnEvent(const SDL_Event*& event);
};

#endif
