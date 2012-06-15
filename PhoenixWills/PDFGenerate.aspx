<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PDFGenerate.aspx.cs" Inherits="PhoenixWills.PDFGenerate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    
        <div id="div1" runat="server" visible="true">
            <div>1 - Choose Country</div>    
            <div>
                <asp:DropDownList ID="ddlCountry" runat="server" onselectedindexchanged="ddlCountry_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Selected="True" Text="Select Country" Value="0" />
                <asp:ListItem Text="Hong Kong" Value="1" />
                <asp:ListItem Text="Rest of World" Value="2" />
                <asp:ListItem Text="United States" Value="3" />
                </asp:DropDownList>
            </div>
        </div>

        <div id="div3" runat="server" visible="false">
            <div>2 - Choose State</div>    
            <div>
                <asp:DropDownList ID="ddlUSStates" runat="server" onselectedindexchanged="ddlCountry_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Selected="True" Text="Select State" Value="0" />
                    <asp:ListItem Text="Alabama" Value="Alabama" />
                    <asp:ListItem Text="Alaska" Value="Alaska" />
                    <asp:ListItem Text="Arizona" Value="Arizona" />
                    <asp:ListItem Text="Arkansas" Value="Arkansas" />
                    <asp:ListItem Text="California" Value="California" />
                    <asp:ListItem Text="Colorado" Value="Colorado" />
                    <asp:ListItem Text="Connecticut" Value="Connecticut" />
                    <asp:ListItem Text="Delaware" Value="Delaware" />
                    <asp:ListItem Text="Florida" Value="Florida" />
                    <asp:ListItem Text="Georgia" Value="Georgia" />
                    <asp:ListItem Text="Hawaii" Value="Hawaii" />
                    <asp:ListItem Text="Idaho" Value="Idaho" />
                    <asp:ListItem Text="Illinois" Value="Illinois" />
                    <asp:ListItem Text="Indiana" Value="Indiana" />
                    <asp:ListItem Text="Iowa" Value="Iowa" />
                    <asp:ListItem Text="Kansas" Value="Kansas" />
                    <asp:ListItem Text="Kentucky" Value="Kentucky" />
                    <asp:ListItem Text="Louisiana" Value="Louisiana" />
                    <asp:ListItem Text="Maine" Value="Maine" />
                    <asp:ListItem Text="Maryland" Value="Maryland" />
                    <asp:ListItem Text="Massachusetts" Value="Massachusetts" />
                    <asp:ListItem Text="Michigan" Value="Michigan" />
                    <asp:ListItem Text="Minnesota" Value="Minnesota" />
                    <asp:ListItem Text="Mississippi" Value="Mississippi" />
                    <asp:ListItem Text="Missouri" Value="Missouri" />
                    <asp:ListItem Text="Montana" Value="Montana" />
                    <asp:ListItem Text="Nebraska" Value="Nebraska" />
                    <asp:ListItem Text="Nevada" Value="Nevada" />
                    <asp:ListItem Text="New Hampshire" Value="New Hampshire" />
                    <asp:ListItem Text="New Jersey" Value="New Jersey" />
                    <asp:ListItem Text="New Mexico" Value="New Mexico" />
                    <asp:ListItem Text="New York" Value="New York" />
                    <asp:ListItem Text="North Carolina" Value="North Carolina" />
                    <asp:ListItem Text="North Dakota" Value="North Dakota" />
                    <asp:ListItem Text="Ohio" Value="Ohio" />
                    <asp:ListItem Text="Oklahoma" Value="Oklahoma" />
                    <asp:ListItem Text="Oregon" Value="Oregon" />
                    <asp:ListItem Text="Pennsylvania" Value="Pennsylvania" />
                    <asp:ListItem Text="Rhode Island" Value="Rhode Island" />
                    <asp:ListItem Text="South Carolina" Value="South Carolina" />
                    <asp:ListItem Text="South Dakota" Value="South Dakota" />
                    <asp:ListItem Text="Tennessee" Value="Tennessee" />
                    <asp:ListItem Text="Texas" Value="Texas" />
                    <asp:ListItem Text="Utah" Value="Utah" />
                    <asp:ListItem Text="Vermont" Value="Vermont" />
                    <asp:ListItem Text="Virginia" Value="Virginia" />
                    <asp:ListItem Text="Washington" Value="Washington" />
                    <asp:ListItem Text="West Virginia" Value="West Virginia" />
                    <asp:ListItem Text="Wisconsin" Value="Wisconsin" />
                    <asp:ListItem Text="Wyoming" Value="Wyoming" />
                </asp:DropDownList>
            </div>
        </div>
    
        <div id="div2" runat="server" visible="false">
            <div>2 - Complete Form</div>    
            <div id="divHK" runat="server" visible="false">Hong Kong form to fill in and send to brad</div>
            <div id="divROW" runat="server" visible="false">Rest of World form to fill in and send to brad</div>
            <div id="divUS" runat="server" visible="false">
                United States form to fill in and send to brad
                <div>Firstname Lastname</div>
                <div>Email</div>
                <div>Address</div>
                <div>
                    <asp:Button ID="btnUSSubmit" runat="server" Text="Checkout" />
                </div>
            </div>
        </div>

        

    </ContentTemplate>
    </asp:UpdatePanel>

    </form>
    
</body>
</html>
