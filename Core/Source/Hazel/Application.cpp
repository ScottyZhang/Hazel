#include "hzpch.h"
#include "Application.h"

#include "../Events/ApplicationEvent.h"
#include "Hazel/Log.h"

#include "../../vendor/GLFW/include/GLFW/glfw3.h"

namespace Hazel {

	Application::Application()
	{
		m_Window = std::unique_ptr<Window>(Window::Create());
	}

	Application::~Application()
	{
	}

	void Application::Run()
	{
		while (m_Running)
		{
			glClearColor(1, 0, 1, 1);
			glClear(GL_COLOR_BUFFER_BIT);
			m_Window->OnUpdate();
		}
	}

}