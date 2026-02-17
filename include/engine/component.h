#ifndef COMPONENT_H_
#define COMPONENT_H_

#include "dg_engine_std.h"

class Component
{
	public:
		virtual void Start() = 0;
		virtual void Update() = 0;
};

#endif
