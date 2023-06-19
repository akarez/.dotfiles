/* user and group to drop privileges to */
static const char *user  = "akarez";
static const char *group = "akarez";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "#282828",     /* after initialization */
	[INPUT] =  "#32302F",   /* during input */
	[FAILED] = "#CC241D",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

/* default message */
static const char * message = "enter password to unlock";

/* text color */
static const char * text_color = "#EBDBB2";

/* text size (must be a valid size) */
static const char * font_name = "lucidasanstypewriter-18";
