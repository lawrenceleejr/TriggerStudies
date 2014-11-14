#!/bin/env python

def generateMenu(menu):

    from TriggerMenu import setUseNewTriggerMenu
    setUseNewTriggerMenu()

    from TriggerMenu.menu import GenerateMenu
    from TriggerJobOpts.TriggerFlags import TriggerFlags

    # what menu to build
    TriggerFlags.triggerMenuSetup = menu

    GenerateMenu.generateMenu()


if __name__=="__main__":
    generateMenu(menu="Physics_pp_v5")
