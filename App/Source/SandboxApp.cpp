#include "hzpch.h"
#include <Hazel.h>


class Sandbox : public Hazel::Application {
public:
	Sandbox() {

	}
	~Sandbox() {

	}
	//void Run() {
	//	
	//}

};

Hazel::Application* Hazel::CreateApplication() {
	return new Sandbox();
}

