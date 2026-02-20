#ifndef TRANSFORM_H_
#define TRANSFORM_H_

#include "engine/dg_engine_std.h"
#include "engine/component.h"

class Transform : public Component
{
	private:
		Vector3 m_pos;
		Vector3 m_rot;
	public:
		Transform(const Vector3& pos = {0, 0, 0}, const Vector3& rot = {0, 0, 0});
		void OnStart();
		void OnIterate();
		void OnDraw();
		void OnEvent(SDL_Event* event);
		const Vector3& GetPosition() const;
		void SetPosition(const Vector3& pos);
};

#endif
