class SwitchToPreviousVirtualDesktopShortcut {
  constructor() {
    this.previousDesktop = "";

    workspace.currentDesktopChanged.connect((desktop) => {
      this.previousDesktop = desktop.id;
    });

    registerShortcut(
      "Switch to Previously Used Desktop",
      "Switch to Previously Used Desktop",
      "Meta+`",
      () => {
        for (const desktop of workspace.desktops) {
          if (desktop.id == this.previousDesktop) {
            workspace.currentDesktop = desktop;
            break;
          }
        }
      },
    );
  }
}

new SwitchToPreviousVirtualDesktopShortcut();
