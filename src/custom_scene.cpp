#include "custom_scene.h"

void GenerateGameScene(std::shared_ptr<Scene> gameScene)
{
	gameScene->AddGameObject();
	auto gb = gameScene->GetGameObject();
}
