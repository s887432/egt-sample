/*
 * Copyright (C) 2018 Microchip Technology Inc.  All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 */
#include <egt/ui>
#include <iostream>

using namespace std;
using namespace egt;

int main(int argc, char** argv)
{
    Application app;
    TopWindow window;
    Button button(window, "Hello World!!!");
    center(button);
    window.show();
    
    return app.run();
}

