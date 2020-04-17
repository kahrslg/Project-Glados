<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Project_Glados_master.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<style>

	.your-element{
		overflow-y:scroll;
		}

	.div1 {float: left;}

	.button{
		background-color: DarkOrange;
		text-align:center;
		color: black;
		cursor: pointer;
		border: none;
		}
	
	input[type=text]{
		height: 30px;
		width: 25%;
		border: none;
		background-color:DarkOrange;
		color: Black;
		}

	input[type=submit]{
		border: none;
		color: black;
		cursor: pointer;
		}

	</style>

<title>Project Glados Extended Results Page</title>
</head>

<body style="background-color:Black;">

<div class="div1">
        <img src="https://www.publicdomainpictures.net/pictures/260000/velka/portal.jpg" alt="Aperture Programming" width="150" height="150"/>
    </div>

	<div style="text-align:center; color:RoyalBlue">
	<h1>Aperture Programming</h1>
	<h2>Project Glados</h2>
	<h3>Extended Results</h3>
	<br/>

	</div>
	
	<div style="text-align:right">
	<button class="button">Back to Main</button>
	</div>
	<br/>
	<br/>

	<div style="margin: auto; align-items: center">
        <form id="form1" runat="server">
            <div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GladosDB %>" SelectCommand="SELECT [Title], [Price], [GenreId], [Description] FROM [VideoGames]"></asp:SqlDataSource>
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="75%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" ItemStyle-HorizontalAlign="Center"/>
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" ItemStyle-HorizontalAlign="Center"/>
                    <asp:BoundField DataField="GenreId" HeaderText="GenreId" SortExpression="GenreId" ItemStyle-HorizontalAlign="Center"/>
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" ItemStyle-HorizontalAlign="Center"/>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </form>
    </div>
</body>
</html>
