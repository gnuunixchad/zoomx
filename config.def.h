/* See LICENSE file for copyright and license details. */

#ifndef CONFIG_H
#define CONFIG_H

#include <X11/keysym.h>

enum Action {
   ACTION_QUIT,
   ACTION_ZOOM_IN,
   ACTION_ZOOM_OUT,
   ACTION_PAN_LEFT,
   ACTION_PAN_RIGHT,
   ACTION_PAN_UP,
   ACTION_PAN_DOWN,
};

static const Bool START_FULLSCREEN = True;
static const Bool CENTER_ON_MOUSE = False;

static const double DEFAULT_SCALE_FACTOR = 2.0;
static const double MAX_SCALE_FACTOR = 3.0;
static const double SCALE_FACTOR_INCREMENT = 1.0;

static const int PAN_INCREMENT = 100;

typedef struct {
   KeySym keysym;
   enum Action action;
} KeyBinding;

static const KeyBinding keybindings[] = {
   { XK_l,         ACTION_PAN_RIGHT     },
   { XK_h,         ACTION_PAN_LEFT      },
   { XK_k,         ACTION_PAN_UP        },
   { XK_j,         ACTION_PAN_DOWN      },
   { XK_i,         ACTION_ZOOM_IN       },
   { XK_o,         ACTION_ZOOM_OUT      },
   { XK_Escape,    ACTION_QUIT          },
   { XK_q,         ACTION_QUIT          },
};

#define NUM_KEYBINDINGS (sizeof(keybindings) / sizeof(keybindings[0]))

#endif
