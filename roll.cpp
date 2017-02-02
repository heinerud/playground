#include <windows.h>

int main() {
	ShellExecute(NULL, "open", "https://youtu.be/dQw4w9WgXcQ",
            NULL, NULL, SW_SHOWNORMAL);
	return 0;
}
