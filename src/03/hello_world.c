#include <fcgi_stdio.h>

int main() {
    while ((FCGI_Accept() >= 0)) {
        printf("Content-type: text/html\r\n"
                "Content-Length: 12\r\n"
                "\r\n"
                "Hello world!");
    }

    return 0;
}
