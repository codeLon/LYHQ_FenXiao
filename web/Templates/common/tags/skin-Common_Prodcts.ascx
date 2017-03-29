<%@ Control Language="C#" %>
<%@ Import Namespace="Hidistro.Core" %>
<%@ Register TagPrefix="Hi" Namespace="Hidistro.UI.Common.Controls" Assembly="Hidistro.UI.Common.Controls" %>
<li onclick="location.href='/ProductDetails.aspx?ProductId=<%#Eval("ProductId") %>'">
					<div  class="y-shopimg">
						<Hi:ListImage ID="ListImage1" runat="server" DataField="ThumbnailUrl220"/>
					</div>
					<div class="y-shopinfo">
						<div class="name"><%# Eval("ProductName") %></div>
						<div class="price">
	                        出游价<span style="font-weight:bold;font-size:15px;color:#ff6a00">¥<%# Eval("SalePrice", "{0:F2}") %></span>起
	                    </div>
	                   <%-- <div class="sales">已售<%# Eval("SaleCounts")%>件</div>--%>
					</div>
				</li>

