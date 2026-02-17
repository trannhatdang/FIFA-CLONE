#ifndef G_OBJECT_
#define G_OBJECT_

#include <vector>
#include "component.h"

class GameObject
{
	private:
		std::vector<std::unique_ptr<Component>> _commponents;
	public:
		GameObject();
		void OnIterate();
		void OnDraw();
		void OnEvent();
};

#endif
