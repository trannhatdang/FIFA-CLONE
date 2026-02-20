#include "engine/Component.h"

Component::Component(const std::string& name) : m_name(name)
{

}

const std::string& Component::GetName() const
{
	return m_name;
}
