module Lirith
  module Core
    class Input
      enum Keys
        Key0           = LibGLFW::KEY_0
        Key1           = LibGLFW::KEY_1
        Key2           = LibGLFW::KEY_2
        Key3           = LibGLFW::KEY_3
        Key4           = LibGLFW::KEY_4
        Key5           = LibGLFW::KEY_5
        Key6           = LibGLFW::KEY_6
        Key7           = LibGLFW::KEY_7
        Key8           = LibGLFW::KEY_8
        Key9           = LibGLFW::KEY_9
        KeyA           = LibGLFW::KEY_A
        KeyB           = LibGLFW::KEY_B
        KeyC           = LibGLFW::KEY_C
        KeyD           = LibGLFW::KEY_D
        KeyE           = LibGLFW::KEY_E
        KeyF           = LibGLFW::KEY_F
        KeyG           = LibGLFW::KEY_G
        KeyH           = LibGLFW::KEY_H
        KeyI           = LibGLFW::KEY_I
        KeyJ           = LibGLFW::KEY_J
        KeyK           = LibGLFW::KEY_K
        KeyL           = LibGLFW::KEY_L
        KeyM           = LibGLFW::KEY_M
        KeyN           = LibGLFW::KEY_N
        KeyO           = LibGLFW::KEY_O
        KeyP           = LibGLFW::KEY_P
        KeyQ           = LibGLFW::KEY_Q
        KeyR           = LibGLFW::KEY_R
        KeyS           = LibGLFW::KEY_S
        KeyT           = LibGLFW::KEY_T
        KeyU           = LibGLFW::KEY_U
        KeyV           = LibGLFW::KEY_V
        KeyW           = LibGLFW::KEY_W
        KeyX           = LibGLFW::KEY_X
        KeyY           = LibGLFW::KEY_Y
        KeyZ           = LibGLFW::KEY_Z
        KeyGraveAccent = LibGLFW::KEY_GRAVE_ACCENT
        KeyEscape      = LibGLFW::KEY_ESCAPE
      end

      enum Event
        KeyPress
        KeyRelease
      end

      def self.handle_key(window : LibGLFW::Window*, key : Int32, scancode : Int32, action : Int32, mods : Int32) : Void
        case action
        when LibGLFW::PRESS  ; Managers::System.trigger_event(Event::KeyPress, Keys.new(key))
        when LibGLFW::RELEASE; Managers::System.trigger_event(Event::KeyRelease, Keys.new(key))
        end
      end
    end
  end
end
