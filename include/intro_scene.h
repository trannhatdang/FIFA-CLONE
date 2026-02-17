#ifndef INTRO_SCENE_H_
#define INTRO_SCENE_H_

#include "engine/scene.h"

class IntroScene : public Scene
{
	public:
		IntroScene();
		void OnIterate();
		void OnDraw();
		void OnEvent();
};

#endif
