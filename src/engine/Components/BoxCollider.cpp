#include "engine/BoxCollider.h"

BoxCollider::BoxCollider(const BColliderOff offset) : Component("BoxCollider"), m_offset(offset) {}

void BoxCollider::OnStart()
{

}

void BoxCollider::OnIterate()
{

}

void BoxCollider::OnDraw()
{

}

void BoxCollider::OnEvent(SDL_Event* event)
{

}

const BColliderOff& BoxCollider::GetOffset() const 
{
	return m_offset;
}

void BoxCollider::SetOffset(const BColliderOff& off) 
{
	m_offset = off;
}
