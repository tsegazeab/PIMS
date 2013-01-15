function CloseActiveToolTip() {
    setTimeout(function () {
        if (Telerik.Web.UI.RadToolTipController) {
            var controller = Telerik.Web.UI.RadToolTipController.getInstance();
            var tooltip = controller.get_activeToolTip();
            if (tooltip) tooltip.hide();
        }
    }, 200);
}