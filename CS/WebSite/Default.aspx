<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<link rel="stylesheet" media="screen" type="text/css" href="picker/css/colorpicker.css" />
	<script src="picker/js/jquery.js"></script>
	<script src="picker/js/colorpicker.js"></script>
	<script language="javascript" type="text/javascript">
		function OnInit(s, e) {
			$(s.GetInputElement()).ColorPicker({
				onSubmit: function (hsb, hex, rgb, el) {
					s.SetColor("#" + hex);
					$(el).ColorPickerHide();
				},
				onBeforeShow: function () {
					$(this).ColorPickerSetColor(this.value);
				}
			})
			.bind('keyup', function () {
				$(this).ColorPickerSetColor(this.value);
			});
		}	
	</script>
	
</head>
<body>
	<form id="form1" runat="server">		
		<dx:ASPxColorEdit ID="ASPxColorEdit1" runat="server" ClientInstanceName="colorEdit" Color="#789012">
			<DropDownButton Visible="false"></DropDownButton>
			<ClientSideEvents Init="OnInit" />
		</dx:ASPxColorEdit>
	</form>
</body>
</html>
