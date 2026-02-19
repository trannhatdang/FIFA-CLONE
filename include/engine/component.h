#ifndef COMPONENT_H_
#define COMPONENT_H_

#include "dg_engine_std.h"

class Component
{
	private:
		std::string m_name = "Component";
	public:
		Component(const std::string& name);
		virtual void OnStart() = 0;
		virtual void OnIterate() = 0;
		virtual void OnDraw() = 0;
		virtual void OnEvent(SDL_Event* event) = 0;
		const std::string& GetName() const;
};

#endif
