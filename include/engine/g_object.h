#ifndef G_OBJECT_
#define G_OBJECT_

#include "component.h"

class GameObject
{
	private:
		std::vector<std::unique_ptr<Component>> m_commponents;
		std::string m_name;
	public:
		GameObject(std::string name = "GameObject");
		void OnIterate();
		void OnDraw();
		void OnEvent(SDL_Event* event);
};

#endif
