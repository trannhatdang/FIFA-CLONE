#ifndef COMPONENT_H_
#define COMPONENT_H_

#include "engine/dg_engine_std.h"
class GameObject;

class Component
{
	private:
		std::string m_name = "Component";
		std::shared_ptr<GameObject> gameObject;
	public:
		Component(const std::string& name, const std::shared_ptr<GameObject>& gameObject);
		virtual void OnStart() = 0;
		virtual void OnFixedIterate();
		virtual void OnIterate() = 0;
		virtual void OnDraw(SDL_Renderer* renderer) = 0;
		virtual void OnEvent(SDL_Event* event) = 0;
		std::string GetName() const;
};

#endif
