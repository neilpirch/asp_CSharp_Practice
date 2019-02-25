<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_02FutureValue.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exercise 2: Future Value</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 154px;
        }
    </style>
</head>
<body>
    <img src="Images/bear.jpg" alt="Bear Logo" />
    <h1>
        401K Future Value Calculator
    </h1>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Monthly Investment</td>
                    <td>
                        <asp:DropDownList ID="ddlMonthlyInvestment" runat="server" Height="22px" Width="128px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Annual Interest Rate</td>
                    <td>
                        <asp:TextBox ID="txtInterestRate" runat="server" Width="128px">3.0</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Number of Years</td>
                    <td>
                        <asp:TextBox ID="txtYears" runat="server" Width="128px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Future Value</td>
                    <td><asp:Label id="lblFutureValue" runat="server" Font-Bold="true"></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" Width="128px"
                            OnClick="BtnCalculate_Click"/>
                    </td>
                    <td>
                        <asp:Button ID="btnClear" runat="server" CausesValidation="False" Text="Clear" Width="128px" 
                            OnClick="BtnClear_Click"/>
                    </td>
                </tr>
            </table>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                runat="server" ErrorMessage="Interest rate is required. "
                ControlToValidate="txtInterestRate" Display="Dynamic" 
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:RangeValidator id="RangeValidator1" runat="server"
                ErrorMessage="Interest rate must range from 1 to 20. "
                ControlToValidate="txtInterestRate" Display="Dynamic"
                ForeColor="Red" Type="Double" MinimumValue="1" MaximumValue="20">
            </asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                runat="server" ErrorMessage="Number of years is required. "
                ControlToValidate="txtYears" Display="Dynamic" 
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:RangeValidator id="RangeValidator2" runat="server"
                ErrorMessage="Years must range from 1 to 45. "
                ControlToValidate="txtYears" Display="Dynamic"
                ForeColor="Red" Type="Integer" MinimumValue="1" MaximumValue="45">
            </asp:RangeValidator>
        </div>
    </form>
</body>
</html>
