/* dmenu position
 * 0 - bottom
 * 1 - top
 * */
static int topbar = 1;

/* font */
static const char *fonts[] = {
	"JetBrains Mono Medium:pixelsize=14:antialias=true:autohint=true"
};

static const unsigned int bgalpha = 0xe0;
static const unsigned int fgalpha = 0xFFU;

static const char	  *prompt = NULL;

/* colorscheme */
static const char *colors[SchemeLast][2] = {
	/*		  fg         bg         */
	[SchemeNorm] = { "#bbbbbb", "#262220" },
	[SchemeSel]  = { "#cd7998", "#262220" },
	[SchemeOut]  = { "#000000", "#7ca296" },
};
static const unsigned int alphas[SchemeLast][2] = {
	/*		 fgalpha  bgalphga	*/
	[SchemeNorm] = { fgalpha, bgalpha },
	[SchemeSel]  = { fgalpha, bgalpha },
	[SchemeOut]  = { fgalpha, bgalpha },
};

/* if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 0;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";

