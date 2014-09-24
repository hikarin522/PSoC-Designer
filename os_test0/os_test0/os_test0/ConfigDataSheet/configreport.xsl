<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">

<HTML>
<HEAD>
	<STYLE>
		DIV.page { page-break-before: always }
	</STYLE>

  
	<XML ID="ZZZ" SRC="PSoCConfig.xml"></XML>


	<SCRIPT language="JavaScript">
	
	<![CDATA[
				
		//var g_DeviceEditor				= null;
		//var g_ps						= null;
		
		
		////////////////
		//
		//	Called from outside 
		//	Adds Name PSoC Designer and Device editor to scripting engines namespace
		//	
		//
		////////////////
		function setPSoC(ps)
		{
			//g_ps			= ps;
			//g_DeviceEditor	= ps.GetDeviceEditor();
		}	
		
		
	]]>
	
	</SCRIPT>

  <style>
    .moduleContainer
    {
    float: left;
    border-right: thin solid;
    border-top: thin solid;
    border-left: thin solid;
    border-bottom: thin solid;
    margin-right:3px;
    margin-bottom:3px;
    }

    .moduleTitle
    {
    text-align:center;
    width:100px;
    margin:3px;
    }

    .moduleImageContainer
    {
    text-align:center;
    vertical-align:middle;
    }
  </style>

</HEAD>




<BODY >

<TABLE BORDER="1" CELLSPACING="0" WIDTH="640">
	<TR>

		<!-- <TD><xsl:value-of select="count(PSOC_CONFIG_LIST)"/> </TD> -->

		<TD>
			<TABLE BORDER="0" CELLSPACING="0">
				<TR>
					<TD>
					<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
							font-size:12pt; color:blue;
							text-align:center; letter-spacing:6px;
							font-weight:bold">
							PSoC Designer Configuration Sheet
					</DIV>
					</TD>
				</TR>
				<TR>
					<TD><IMG SRC="cyp.jpg" ALIGN="LEFT" WIDTH="350"/></TD>
				</TR>
			</TABLE>
		</TD>

		<TD><TABLE BORDER="0" CELLSPACING="0">
				<TR> <TD>
					<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
							font-size:10pt; color:black;
							text-align:center; letter-spacing:6px;
							font-weight:bold">
							<xsl:value-of select="//PSOC_CONFIG_LIST/PSOC_CONFIG/@NAME"/>
					</DIV>
				</TD> </TR>

				<TR>
					<TD>
						<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
												font-size:12pt; color:blue;
												text-align:center; letter-spacing:6px;
												font-weight:bold">
									<xsl:value-of select="//PSOC_CONFIG_LIST/PSOC_CONFIG/@BASE_DEVICE"/>
						</DIV>
					</TD>
				</TR>

				<TR>
					<TD>
					<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
							font-size:12pt; color:black;
							text-align:center; letter-spacing:6px;
							font-weight:bold">
							<xsl:value-of select="//PSOC_CONFIG_LIST/PSOC_CONFIG/@CONFIG_SAVE_DATE"/>
					</DIV>
					</TD>
				</TR>
		</TABLE></TD>

	</TR>
</TABLE>




<P></P>
<xsl:if test="count(//PSOC_CONFIG_LIST/PSOC_CONFIG) > 1" >
<BR/><BR/>
<TABLE BORDER="1" CELLSPACING="0" WIDTH="640">

	<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
							font-size:12pt; color:blue;
							text-align:center; letter-spacing:6px;
							font-weight:bold">
							Configuration Summary
	</DIV>

	<TR><TD>
		<xsl:for-each select="//PSOC_CONFIG_LIST/PSOC_CONFIG">
			
				<TABLE ALIGN="CENTER" BORDER="1" CELLSPACING="0" >
				<TR><TD>
					<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
									font-size:10pt; color:blue;
									text-align:center; letter-spacing:6px;
									font-weight:bold">
									<xsl:value-of select="./@NAME"/>
					</DIV>
				</TD></TR>
				</TABLE>
			
				<!--hat1 -->
				<!--HAT-->
				<TABLE BORDER="1" CELLSPACING="0" WIDTH="640">
					<TR ALIGN="CENTER">
						<xsl:for-each select="USER_MODULE_LIST/USER_MODULE">	 
							<TD>
								<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
												font-size:10pt; color:black;
												text-align:center; letter-spacing:6px;
												font-weight:bold">
												<xsl:value-of select="@NAME"/>
								</DIV>
							</TD>
						</xsl:for-each>
					</TR>
					<TR ALIGN="CENTER">
						<xsl:for-each select="USER_MODULE_LIST/USER_MODULE">	 
							<TD><IMG>
							  <xsl:attribute name="src">
								<xsl:value-of select="@NAME" />.ico
							  </xsl:attribute>
							</IMG></TD>
						</xsl:for-each>
					</TR>
					<TR ALIGN="CENTER">
						<xsl:for-each select="USER_MODULE_LIST/USER_MODULE">	 
							<TD>
								<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
												font-size:10pt; color:black;
												text-align:center; letter-spacing:6px;
												font-weight:bold">
												<xsl:value-of select="@INSTANCE_NAME"/>
								</DIV>
							</TD>
						</xsl:for-each>
					</TR>
				</TABLE>
				<!--hat1 -->
				<!--HAT-->
		

		</xsl:for-each>
	</TD></TR>
	

</TABLE>
</xsl:if>

<P></P>
<BR/><BR/>

<xsl:for-each select="//PSOC_CONFIG_LIST/PSOC_CONFIG">
	<xsl:if test="count(//PSOC_CONFIG_LIST/PSOC_CONFIG) > 1" >
		<P STYLE="page-break-before:always"/>
		<TABLE BORDER="1" CELLSPACING="0" WIDTH="640">
			<TR>
				<TD>
					<TABLE BORDER="0" CELLSPACING="0">
						<TR>
							<TD>
							<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
									font-size:12pt; color:blue;
									text-align:center; letter-spacing:6px;
									font-weight:bold">
									Loadable Configuration Summary
							</DIV>
							</TD>
						</TR>
						<TR>
							<TD><IMG SRC="cyp.jpg" ALIGN="LEFT" WIDTH="350"/></TD>
						</TR>
					</TABLE>
				</TD>

				<TD><TABLE BORDER="0" CELLSPACING="0">
					<TR> <TD>
						<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
								font-size:10pt; color:black;
								text-align:center; letter-spacing:6px;
								font-weight:bold">
								<xsl:value-of select="@NAME"/>
						</DIV>
					</TD> </TR>
				</TABLE></TD>
			</TR>
		</TABLE>
	</xsl:if>

	<!--HAT-->

  <div style="width:640px">
    <xsl:for-each select="USER_MODULE_LIST/USER_MODULE">
      <div class="moduleContainer">
        <div class="moduleTitle">
          <xsl:value-of select="@NAME"/>
        </div>
        <div class="moduleImageContainer">
          <IMG>
            <xsl:attribute name="src">
              <xsl:value-of select="@NAME" />.ico
            </xsl:attribute>
          </IMG>
        </div>
        <div class="moduleTitle">
          <xsl:value-of select="@INSTANCE_NAME"/>
        </div>
      </div>
    </xsl:for-each>
  </div>
  
	<P STYLE="page-break-before:always"/>

	<TABLE BORDER="1" CELLSPACING="0" WIDTH="640">	
		<!-- Pinout!!!!!! -->

		<TR ALIGN="CENTER"><TD>
					<embed>
					  <xsl:attribute name="src">CDPINOUT_<xsl:value-of select="@NAME"/>.SVG</xsl:attribute>
					  <xsl:attribute name="name"><xsl:value-of select="@NAME"/>_SVG</xsl:attribute>
  					  <xsl:attribute name="id"><xsl:value-of select="@NAME"/>_SVG</xsl:attribute>
  					  <xsl:attribute name="width">640</xsl:attribute>
  					  <xsl:attribute name="height">800</xsl:attribute>
					  <xsl:attribute name="type"><![CDATA[image/svg-xml]]> </xsl:attribute>
					</embed>
		</TD></TR>	
	</TABLE>

	<P STYLE="page-break-before:always"/>

	<TABLE BORDER="1" CELLSPACING="0" WIDTH="640">	
		<TR ALIGN="CENTER"><TD>
					<embed>
					  <xsl:attribute name="src">CDPLACER_<xsl:value-of select="@NAME"/>.SVG</xsl:attribute>
					  <xsl:attribute name="name"><xsl:value-of select="@NAME"/>_PV_SVG</xsl:attribute>
  					  <xsl:attribute name="id"><xsl:value-of select="@NAME"/>_PV_SVG</xsl:attribute>
  					  <xsl:attribute name="width">640</xsl:attribute>
  					  <xsl:attribute name="height">800</xsl:attribute>
					  <xsl:attribute name="type"><![CDATA[image/svg-xml]]> </xsl:attribute>
					</embed>
		</TD></TR>	

	</TABLE>






	<NOEMBED>To view download the Adobe SVG viewer</NOEMBED> 
	<!-- end Pinout!!!!!! -->


	
	<P STYLE="page-break-before:always"/>
	<TABLE BORDER="1" CELLSPACING="0" WIDTH="640">
		<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
								font-size:12pt; color:blue;
								text-align:center; letter-spacing:6px;
								font-weight:bold">
								Signal Pin Table (<xsl:value-of select="@NAME"/>)
		</DIV>

					
<!--
		<TR ALIGN="CENTER"><TD>
				<TABLE BORDER="0" CELLSPACING="0">
					<TR>
						<TD><IMG SRC="part.jpg"/></TD>
					</TR>
				</TABLE>
		</TD></TR>
-->
				
		<TR>
			<TD>
				<TABLE BORDER="1" CELLSPACING="0" ALIGN="CENTER">
						<TR
							STYLE="font-family:Tahoma,Arial,sans-serif; 
							font-size:10pt; color:red;
							text-align:center; letter-spacing:8px;
							font-weight:bold">
							<TD>Pin#</TD>
							<TD>Port</TD>
							<TD>Label</TD>
							<TD>Select</TD>
							<TD>Drive</TD>
							<TD>Interrupt</TD>
							
						</TR>
						<xsl:for-each select="DEVICE_DATA/PIN_DESC_LIST/PIN_DESC">
							<TR ALIGN="CENTER">
								<xsl:if test="self::node()[@PIN_LABEL!='NONE']">
									<TD ><xsl:number count="PIN_DESC[@PIN_LABEL!='NONE']"/></TD >
								<TD ><xsl:value-of select="@PIN_LABEL"/></TD>
								<TD ><xsl:value-of select="@PIN_CUSTOM_NAME"/></TD>
								<TD ><xsl:value-of select="@PIN_SELECT"/></TD>
								<TD><xsl:value-of select="@PIN_DRIVE"/></TD>
								<TD ><xsl:value-of select="@PIN_INTERRUPT"/></TD>
								</xsl:if>
							</TR>
						</xsl:for-each>
				</TABLE>
			</TD>

		</TR>

	</TABLE>
	<P/>


	<P STYLE="page-break-before:always"/>
	<TABLE BORDER="1" CELLSPACING="0" WIDTH="640">
		<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
								font-size:12pt; color:blue;
								text-align:center; letter-spacing:6px;
								font-weight:bold">
								Selected Global Parameters (<xsl:value-of select="@NAME"/>)
		</DIV>
		
		<TR
			STYLE="font-family:Tahoma,Arial,sans-serif; 
			font-size:10pt; color:red;
			text-align:center; letter-spacing:8px;
			font-weight:bold">
			<TD>Name</TD>
			<TD>Value</TD>
		</TR>
		<xsl:for-each select="DEVICE_DATA/GLOBAL_RESOURCE_LIST/RESOURCE">	 
			<TR>
				<TD><xsl:apply-templates select="@NAME"/></TD>
				<TD><xsl:apply-templates select="@VALUE"/></TD>
			</TR>
		</xsl:for-each>

	</TABLE>





	<xsl:for-each select="USER_MODULE_LIST/USER_MODULE">	 

	<P STYLE="page-break-before:always"/>
		<TABLE BORDER="1" CELLSPACING="0" WIDTH="640">
			<TR>
				<TD>
					<TABLE BORDER="0" CELLSPACING="0">
						<TR>
							<TD ALIGN="CENTER">
							<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
									font-size:12pt; color:blue;
									text-align:center; letter-spacing:6px;
									font-weight:bold">
									User Module Detail <xsl:value-of select="@INSTANCE_NAME"/> (<xsl:value-of select="@NAME"/>)
							</DIV>
							</TD>
						</TR>
						<TR>
							<TD><IMG SRC="cyp.jpg" ALIGN="LEFT" WIDTH="350"/></TD>
						</TR>
					</TABLE>
				</TD>

				<TD>
					<TABLE BORDER="0" CELLSPACING="0" ALIGN="CENTER">
						<TR><TD><IMG>
						  <xsl:attribute name="src">
							<xsl:value-of select="@NAME" />.ico
						  </xsl:attribute>
						</IMG></TD></TR>
					</TABLE>
				</TD>
			</TR>
		</TABLE>
		<TABLE BORDER="1" CELLSPACING="0" WIDTH="640">
			<TR><TD><IMG>
			  <xsl:attribute name="src">
				<xsl:value-of select="@NAME" />_block.gif
			  </xsl:attribute>
			</IMG></TD></TR>
		</TABLE>
		<P/>

		
		<TABLE BORDER="1" CELLSPACING="0" WIDTH="640">
			<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
									font-size:12pt; color:blue;
									text-align:center; letter-spacing:6px;
									font-weight:bold">
									Parameters
			</DIV>



			<TR
				STYLE="font-family:Tahoma,Arial,sans-serif; 
				font-size:10pt; color:red;
				text-align:center; letter-spacing:8px;
				font-weight:bold">
				<TD>Parameters</TD>
				<TD>Value</TD>
			</TR>
			<xsl:for-each select="PARAMETER_LIST/PARAMETER">	 
<!-- Inline execption to hide "API_HIDDEN" parameters -->
						<xsl:if test="not(contains(@NAME, 'DSHID'))">
						<TR>
							<TD><xsl:apply-templates select="@NAME"/></TD>
							<TD><xsl:apply-templates select="@VALUE"/></TD>
						</TR>
						</xsl:if>
			</xsl:for-each>
		</TABLE>



	  <xsl:if test="count(SHAPE/BLOCK_LIST/BLOCK) > 0" >
		<BR/>
		<TABLE BORDER="1" CELLSPACING="0" WIDTH="640">
			<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
									font-size:12pt; color:blue;
									text-align:center; letter-spacing:6px;
									font-weight:bold">
									Blocks
			</DIV>

			
			<xsl:for-each select="SHAPE">	 
				
				<xsl:for-each select="BLOCK_LIST/BLOCK">	 
					<TR/><TR/><TR/>
					 <TR
					STYLE="font-family:Tahoma,Arial,sans-serif; 
					font-size:11pt; color:red;
					text-align:center; letter-spacing:8px;
					font-weight:bold">
					
							
					<TD>
						<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
										font-size:12pt; color:blue;
										text-align:center; letter-spacing:6px;
										font-weight:bold">
										Block
						</DIV>
					</TD>

					<TD>Type</TD>
					<TD>Location</TD>
					</TR>

					<TR>
						
						<TD><xsl:apply-templates select="@NAME"/></TD>
						<TD><xsl:apply-templates select="@TYPE"/></TD>
						<TD><xsl:apply-templates select="@LOCATION"/></TD>
					</TR>


					<TR
						STYLE="font-family:Tahoma,Arial,sans-serif; 
						font-size:10pt; color:red;
						text-align:center; letter-spacing:8px;
						font-weight:bold">
						
								
						<TD>Registers</TD>
						<TD>Name</TD>
						<TD>Address</TD>
						<TD>Value</TD>
					</TR>
					<xsl:for-each select="REGISTER_LIST/REGISTER">	 
						<TR>	
							<TD><xsl:apply-templates select="@NAME"/></TD>
							<TD><xsl:apply-templates select="@DATASHEET_NAME"/></TD>
							<TD><xsl:apply-templates select="@ADDR"/></TD>
							<TD><xsl:apply-templates select="@VALUE"/></TD>
						</TR>
					</xsl:for-each>	
					<TR HEIGHT="10"/>
				</xsl:for-each>
			</xsl:for-each>

		</TABLE>
	  </xsl:if>
	</xsl:for-each>


	<P STYLE="page-break-before:always"/>
	<TABLE BORDER="1" CELLSPACING="0" WIDTH="640">
	<TR>
		<TD>
			<TABLE BORDER="0" CELLSPACING="0">
				<TR><TD><IMG SRC="cyp.jpg" ALIGN="LEFT" WIDTH="350"/></TD></TR>
			</TABLE>
		</TD>

		<TD>
			<TABLE BORDER="0" CELLSPACING="0" ALIGN="CENTER">
				<TR><TD>
					
					<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
							font-size:16pt; color:blue;
							text-align:center; letter-spacing:6px;
							font-weight:bold">
							Configuration Analog and Global Register Values
					</DIV>

				</TD></TR>
			</TABLE>
		</TD>
	</TR>
	</TABLE>



	<P></P>
	<TABLE BORDER="1" CELLSPACING="0" WIDTH="640">
		<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
								font-size:12pt; color:blue;
								text-align:center; letter-spacing:6px;
								font-weight:bold">
								Analog Clocks (<xsl:value-of select="@NAME"/>)
		</DIV>
		
		<TR
			STYLE="font-family:Tahoma,Arial,sans-serif; 
			font-size:10pt; color:red;
			text-align:center; letter-spacing:8px;
			font-weight:bold">
			<TD>Name</TD>
			<TD>Value</TD>
		</TR>
		<xsl:for-each select="DEVICE_DATA/RESERVED_RESOURCE_LIST/RESOURCE">	 
			<xsl:if test="@TYPE='ANALOG_CLOCK_SELECT'">
				<TR>
					<TD><xsl:value-of select="@NAME"/></TD>
					<TD><xsl:value-of select="@VALUE"/></TD>
				</TR>
			</xsl:if> 
		</xsl:for-each>
		<xsl:for-each select="DEVICE_DATA/RESERVED_RESOURCE_LIST/RESOURCE">	 
			<xsl:if test="@TYPE='ANALOG_COLUMN_CLOCK_MUX'">
				<TR>
					<TD><xsl:value-of select="@NAME"/></TD>
					<TD><xsl:value-of select="@VALUE"/></TD>
				</TR>
			</xsl:if> 
		</xsl:for-each>
	</TABLE>



	<P></P>
	<TABLE BORDER="1" CELLSPACING="0" WIDTH="640">
		<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
								font-size:12pt; color:blue;
								text-align:center; letter-spacing:6px;
								font-weight:bold">
								Analog Input MUX (<xsl:value-of select="@NAME"/>)
		</DIV>
		
		<TR
			STYLE="font-family:Tahoma,Arial,sans-serif; 
			font-size:10pt; color:red;
			text-align:center; letter-spacing:8px;
			font-weight:bold">
			<TD>Name</TD>
			<TD>Value</TD>
		</TR>

		<xsl:for-each select="DEVICE_DATA/RESERVED_RESOURCE_LIST/RESOURCE">	 
			<xsl:if test="@TYPE='COLUMN_INPUT'">
				<TR>
					<TD><xsl:value-of select="@NAME"/></TD>
					<TD><xsl:value-of select="@VALUE"/></TD>
				</TR>
			</xsl:if> 
		</xsl:for-each>
	</TABLE>



	<P></P>
	<TABLE BORDER="1" CELLSPACING="0" WIDTH="640">
		<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
								font-size:12pt; color:blue;
								text-align:center; letter-spacing:6px;
								font-weight:bold">
								Analog Buffer Output (<xsl:value-of select="@NAME"/>)
		</DIV>
		
		<TR
			STYLE="font-family:Tahoma,Arial,sans-serif; 
			font-size:10pt; color:red;
			text-align:center; letter-spacing:8px;
			font-weight:bold">
			<TD>Name</TD>
			<TD>Value</TD>
		</TR>

		<xsl:for-each select="DEVICE_DATA/RESERVED_RESOURCE_LIST/RESOURCE">	 
			<xsl:if test="@TYPE='ANALOG_DRIVER'">
				<TR>
					<TD><xsl:value-of select="@NAME"/></TD>
					<TD><xsl:value-of select="@VALUE"/></TD>
				</TR>
			</xsl:if> 
		</xsl:for-each>


		
	</TABLE>

	<P></P>
	<TABLE BORDER="1" CELLSPACING="0" WIDTH="640">
		<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
								font-size:12pt; color:blue;
								text-align:center; letter-spacing:6px;
								font-weight:bold">
								Global Register Values (<xsl:value-of select="@NAME"/>)
		</DIV>
		
		<TR
			STYLE="font-family:Tahoma,Arial,sans-serif; 
			font-size:10pt; color:red;
			text-align:center; letter-spacing:8px;
			font-weight:bold">
			<TD>Register</TD>
			<TD>Name</TD>
			<TD>Address</TD>
			<TD>Value</TD>
		</TR>

		<xsl:for-each select="DEVICE_DATA/GLOBAL_REGISTER_LIST/REGISTER">	 
			<TR>
				<TD><xsl:value-of select="@NAME"/></TD>
				<TD><xsl:value-of select="@DATASHEET_NAME"/></TD>
				<TD><xsl:value-of select="@ADDR"/></TD>
				<TD><xsl:value-of select="@VALUE"/></TD>
			</TR>
		</xsl:for-each>
	</TABLE>

</xsl:for-each>



</BODY>	</HTML>
</xsl:template>




<xsl:template match="@NAME">
	<B><xsl:value-of select="." /></B>
</xsl:template>

<xsl:template match="@VALUE">
	<xsl:value-of select="." />
</xsl:template>

<xsl:template match="@INSTANCE_NAME">
	<B><xsl:value-of select="." /></B>
</xsl:template>

<xsl:template match="@SOURCE_GEN_TIME">
	<xsl:value-of select="." />
</xsl:template>


<!--
<xsl:template match="@BASE_DEVICE">
	<DIV STYLE="media=print;font-family:Tahoma,Arial,sans-serif; 
							font-size:12pt; color:blue;
							text-align:center; letter-spacing:6px;
							font-weight:bold">
							<xsl:value-of />
	</DIV>
</xsl:template>
-->


<xsl:template match="@TYPE">
	<xsl:value-of select="." />
</xsl:template>

<xsl:template match="@LOCATION">
	<xsl:value-of select="." />
</xsl:template>

<xsl:template match="@REGISTER_NAME">
	<B><xsl:value-of select="." /></B>
</xsl:template>

<xsl:template match="@REGISTER_VALUE">
	<xsl:value-of select="." />
</xsl:template>

<xsl:template match="@ADDR">
	<xsl:value-of select="." />
</xsl:template>

<xsl:template match="@PIN_NUMBER">
	<xsl:value-of select="." />
</xsl:template>

<xsl:template match="@PIN_LABEL">
	<xsl:value-of select="." />
</xsl:template>

<xsl:template match="@PIN_SELECT">
	<xsl:value-of select="." />
</xsl:template>

<xsl:template match="@PIN_DRIVE">
	<xsl:value-of select="." />
</xsl:template>
			

</xsl:stylesheet>




			

