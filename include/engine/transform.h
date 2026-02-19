#ifndef TRANSFORM_H_
#define TRANSFORM_H_

#include "engine/dg_engine_std.h"
#include "engine/component.h"

class Transform : public Component
{
	private:
		std::vector<int> m_pos;
		std::vector<int> m_rot;
	public:
		Transform(const std::vector<int>& pos = {0, 0, 0}, const std::vector<int>& rot = {0, 0, 0});
		void OnStart();
		void OnIterate();
		void OnDraw();
		void OnEvent(SDL_Event* event);
		std::vector<int> GetPosition();
		void SetPosition(const std::vector<int>& pos);
};

#endif
