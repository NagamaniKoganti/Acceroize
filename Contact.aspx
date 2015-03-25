<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLayout.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="content-Common">
        <h2>Please Leave your Valuable comments and suggestion for better service</h2>
        <div class="Input-wrap">
            <div class="side-labels">
                <label>Name</label>
            </div>
            <div class="side-inputs">
                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>

            </div>
            <div class="side-Valid">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Please enter name" ControlToValidate="TxtName"></asp:RequiredFieldValidator>
            </div>
           </div>
        <div class="Input-wrap">   
            <div class="side-labels">
                <label>Email</label>

            </div>
            <div class="side-inputs">
                <asp:TextBox ID="TxtEmail" runat="server" CssClass="Inputs"></asp:TextBox>

            </div>
            <div class="side-Valid">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Please enter name" ControlToValidate="TxtEmail"></asp:RequiredFieldValidator>

            </div>
           </div>
         <div class="Input-wrap">   
            <div class="side-labels">
                <label>Subject</label>

            </div>
            <div class="side-inputs">
                <asp:TextBox ID="TxtSubject" runat="server" CssClass="Inputs"></asp:TextBox>

            </div>
            <div class="side-Valid">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubject" runat="server" ErrorMessage="Please enter Subject" ControlToValidate="TxtSubject"></asp:RequiredFieldValidator>

            </div>
           </div>
         <div class="Input-wrap" style="height:140px;">   
            <div class="side-labels">
                <label>Comments/Suggestions</label>

            </div>
            <div class="side-inputs">
                <asp:TextBox ID="TxtComments" runat="server" TextMode="MultiLine" Height="80px" Width="170px"></asp:TextBox>

            </div>
            <div class="side-Valid">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorComment" runat="server" ErrorMessage="Please enter matter" ControlToValidate="TxtComments"></asp:RequiredFieldValidator>

            </div>
           </div>
        
        <div class="Input-wrap">   
            <div class="side-labels">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

            </div>
            <div class="side-inputs">
                <asp:Button ID="BtnSend" runat="server" Text="Send" CssClass="Buttons" OnClick="BtnSend_Click" />

            </div>
            <div class="side-Valid">
                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" CssClass="Buttons" />

            </div>
           </div>
         <div class="Input-wrap" >   
            <div class="side-labels">
                <asp:Label ID="LabelMessage" runat="server" Text=""></asp:Label>

            </div>
         </div>
        </div> 
</asp:Content>

