#include "engine/transform.h"

Transform::Transform(const std::vector<int>& pos, const std::vector<int>& rot) : Component("Transform"), m_pos(pos), m_rot(rot)
{

}

void Transform::OnStart()
{

}

void Transform::OnIterate()
{

}

void Transform::OnDraw()
{

}

void Transform::OnEvent(SDL_Event* event)
{

}

std::vector<int> Transform::GetPosition()
{
	return m_pos;
}

void Transform::SetPosition(const std::vector<int>& pos)
{
	m_pos = pos;
}
