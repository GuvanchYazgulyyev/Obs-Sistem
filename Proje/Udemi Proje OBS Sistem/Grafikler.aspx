<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Grafikler.aspx.cs" Inherits="Udemi_Proje_OBS_Sistem.Grafikler" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<%@ Register Assembly="DevExpress.XtraCharts.v20.2.Web, Version=20.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.XtraCharts.v20.2, Version=20.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <table class="table table-bordered table-hover">
            <tr>
                <td>
                    <dx:WebChartControl ID="WebChartControl3" runat="server" CrosshairEnabled="True" Height="300px" Width="500px" AppearanceNameSerializable="The Trees" PaletteName="Green">
                        <DiagramSerializable>
                            <dx:XYDiagram>
                                <AxisX VisibleInPanesSerializable="-1">
                                </AxisX>
                                <AxisY VisibleInPanesSerializable="-1">
                                </AxisY>
                            </dx:XYDiagram>
                        </DiagramSerializable>
                        <Legend Name="Default Legend"></Legend>
                        <SeriesSerializable>
                            <dx:Series LegendTextPattern="{A}" Name="Notlar">
                                <ViewSerializable>
                                    <dx:SideBySideStackedBarSeriesView>
                                    </dx:SideBySideStackedBarSeriesView>
                                </ViewSerializable>
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                </td>
                <td>
                    <dx:WebChartControl ID="WebChartControl4" runat="server" CrosshairEnabled="True" Height="300px" Width="500px" AppearanceNameSerializable="Nature Colors" PaletteName="Nature Colors">
                        <Legend Name="Default Legend"></Legend>
                        <SeriesSerializable>
                            <dx:Series LegendTextPattern="{A}" Name="DersAd">
                                <ViewSerializable>
                                    <dx:DoughnutSeriesView>
                                    </dx:DoughnutSeriesView>
                                </ViewSerializable>
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                </td>
            </tr>
            <tr>
                <td>
                    <dx:WebChartControl ID="WebChartControl1" runat="server" CrosshairEnabled="True" Height="300px" Width="500px">
                        <DiagramSerializable>
                            <dx:SimpleDiagram3D RotationMatrixSerializable="1;0;0;0;0;0.5;-0.866025403784439;0;0;0.866025403784439;0.5;0;0;0;0;1">
                            </dx:SimpleDiagram3D>
                        </DiagramSerializable>
                        <Legend Name="Default Legend"></Legend>
                        <SeriesSerializable>
                            <dx:Series LegendTextPattern="{A}" Name="Cinsiyet">
                                <ViewSerializable>
                                    <dx:Pie3DSeriesView>
                                    </dx:Pie3DSeriesView>
                                </ViewSerializable>
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                </td>
                <td>
                    <dx:WebChartControl ID="WebChartControl2" runat="server" CrosshairEnabled="True" Height="300px" Width="500px">
                        <DiagramSerializable>
                            <dx:XYDiagram>
                                <AxisX VisibleInPanesSerializable="-1">
                                </AxisX>
                                <AxisY VisibleInPanesSerializable="-1">
                                </AxisY>
                            </dx:XYDiagram>
                        </DiagramSerializable>
                        <Legend Name="Default Legend" Direction="BottomToTop"></Legend>
                        <SeriesSerializable>
                            <dx:Series Name="Dersler">
                                <ViewSerializable>
                                    <dx:StackedBarSeriesView>
                                    </dx:StackedBarSeriesView>
                                </ViewSerializable>
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
