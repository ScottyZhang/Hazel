#include "hzpch.h"
#include "Application.h"

#include "../../Events/ApplicationEvent.h"
#include "Hazel/Log.h"

namespace Hazel {
	Application::Application() {

	}
	Application::~Application() {

	}

	void Application::Run() {
		WindowResizeEvent e(1234, 720);
		if (e.IsInCategory(EventCategoryApplication)) {
			HZ_TRACE(e);

		}
		if (e.IsInCategory(EventCategoryInput)) {
			HZ_TRACE(e);
		}
		printf("with Precompiler Header\n");
		while (true);
	}
}