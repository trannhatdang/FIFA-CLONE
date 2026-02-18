#ifndef COMPONENT_H_
#define COMPONENT_H_

#include "dg_engine_std.h"

class Component
{
	public:
		virtual void Start() = 0;
		virtual void OnIterate() = 0;
		virtual void OnDraw() = 0;
		virtual void OnEvent(SDL_Event* event) = 0;
};

#endif
