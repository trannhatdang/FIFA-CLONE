#include "engine/Components/Component.h"

Component::Component(const std::string& name, const std::shared_ptr<GameObject>& gameObject) : m_name(name), gameObject(gameObject)
{

}

const std::string& Component::GetName() const
{
	return m_name;
}
