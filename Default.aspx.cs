using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetImageUrl();
        }
    }
    private void SetImageUrl()
    {
        CommonDatabase_Composition ObjCommondb = new CommonDatabase_Composition();
        DataSet ds = ObjCommondb.GetDatasetResults("spGetSlideshowImages", null);
        ViewState["ImageData"] = ds;
        ViewState["ImageDisplayed"] = 1;

        DataRow imageDataRow = ds.Tables["Image"].Select().FirstOrDefault(x => x["order"].ToString() == "1");
        ImageSlideshow.ImageUrl = "~/Images/Home/" + imageDataRow["Name"].ToString();
        LabelSlide.Text = imageDataRow["Description"].ToString();

    }
    protected void BtnPause_Click(object sender, EventArgs e)
    {
        if (Timerslide.Enabled)
        {
            Timerslide.Enabled = false;
            BtnPause.Text = "Pause";
        }
        else
        {
            Timerslide.Enabled = true;
            BtnPause.Text = "Start";
        }
    }
    protected void Timerslide_Tick(object sender, EventArgs e)
    {
        int i = (int)ViewState["ImageDisplayed"];
        i = i + 1;
        ViewState["ImageDisplayed"] = i;

        DataRow imageDataRow = ((DataSet)ViewState["ImageData"]).Tables["Image"].Select().FirstOrDefault(x => x["order"].ToString() == i.ToString());
        if (imageDataRow != null)
        {
            ImageSlideshow.ImageUrl = "~/Images/Home/" + imageDataRow["Name"].ToString();
            LabelSlide.Text = imageDataRow["Description"].ToString();
        }
        else
        {
            SetImageUrl();
        }

    }
}