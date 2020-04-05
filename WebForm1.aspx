<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ProjectGlados1._0.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>

    .div1 { 
    float: left;
    }

    <!--.dropbtn {
    	cursor: pointer;
    }

    .dropdown {
	    position: relative;
    	display: inline-block;
    } -->



    </style>
    <title>Project Glados</title>
</head>

<body style="background-color:BlanchedAlmond;">
    <div class="div1">
        <img src="https://www.publicdomainpictures.net/pictures/260000/velka/portal.jpg" alt="Aperture Programming" width="150" height="150"/>
    </div>
    <div style="text-align:center">
        <h1>Aperture Programming</h1>
        <br/>
        <h2>Project Glados</h2>
        <br/><br/>
        <p><b><u>Project Glados is an interactive video game catalog. Please enter either: the name, the devloper, or the rating of a game below to look up.</u></b></p>
    </div>

    <div style="text-align:center">
	    <form>
		    <label for="gameName">Name of Game:</label>
    		<label for="gameDev">Developer:</label>
	    	<label for="gameRating">Rating of game, 1-5:</label>
    		<br/>
    		<input type="text" id="gameName" name="gameName"/>
    		<input type="text" id="gameDev" name="gameDev"/>
	    	<input type="number" id="gameRating" name="gameRating"/>

	        <input type="submit" value="Submit"/>
	    </form>
    </div>

    <br />

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
