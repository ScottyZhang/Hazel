#pragma once
#include "Core.h"
#include "Window.h"
#include "../Events/Event.h"
#include "Platform/Windows/WindowsWindow.h"

namespace Hazel {

    class HAZEL_API Application {
    public:
        Application();
        virtual ~Application();

        void Run();

    private:
        std::unique_ptr<Window> m_Window;
        bool m_Running = true;
    };

    // To be defined in CLIENT
    Application* CreateApplication();
}
