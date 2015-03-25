<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderSlideshow" Runat="Server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <b><asp:Label ID="LabelSlide" runat="server" Text="Label" CssClass="labels">                
               </asp:Label></b><span style="float:right"><asp:Button ID="BtnPause" runat="server" Text="Pause" OnClick="BtnPause_Click" /></span>
            <asp:Image ID="Image1" runat="server" />
            <asp:Image ID="ImageSlideshow" runat="server" Height="200" Width="400" />
            <asp:Timer ID="Timerslide" runat="server" Interval="2000" OnTick="Timerslide_Tick" ></asp:Timer><br />
            
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderContent" Runat="Server">
     <div>
         <h1>Headings</h1>
       <p>Home page Content goes here</p> 
        <h1>Headings</h1>
         <p>Home page Content goes here</p> 
        <h1>Headings</h1>
         <p>Home page Content goes here</p> 
         <p>Home page Content goes here</p> 
         <p>Home page Content goes here</p> 
        <h1>Headings</h1>
         <p>Home page Content goes here</p> 
        <h1>Headings</h1>
         <p>Home page Content goes here</p> 
        <h1>Headings</h1>
         <p>Home page Content goes here</p> 
        <h1>Headings</h1>

        <h1>Headings</h1>
        <h1>Headings</h1>
    </div>
</asp:Content>

