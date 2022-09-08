<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:tei="http://www.tei-c.org/ns/1.0"
                xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
    <xsl:template match="/"><!--template match tutto start inizio del file path whole document-->
        <html>
            <head>
                <title>Progetto di Codifica di Testi - Prolusioni 2, pagine 10 e 11 di F. De Saussure</title>
                <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css" />
                <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
                <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
                
              
                <script src="js/page.js"></script>
                <script src="js/markling.js"></script>
                <link href="style.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
               <img id="background" src="img/pergamena.jpg"/>
                <header>
                    <h1>APPUNTI DI FERDINAND DE SAUSSURE</h1>

                    <div id="infogenerali">
                    <h3>Doc. <xsl:value-of select="//tei:idno" /></h3>
                    <h1><xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@xml:lang='fr']" /></h1>
                    <h3><xsl:value-of select="//tei:title[@xml:lang='it']" /></h3>
                    <h2>di <xsl:apply-templates select="//tei:author[@ref='FDS']" /></h2>
                </div>

                    <nav class="navbar">
                        <ul> 
                            <li><a href="#info">Informazioni</a></li>
                            <li><a href="#p10">Pagina 10</a></li>
                            <li><a href="#p11">Pagina 11</a></li>
                            <li><a href="#appendice">Appendice</a></li>
                        </ul>
                    </nav>
                </header>
          
                
                <div>
                    <div id="info">
                            <article>
                            <h2>Informazioni Generali</h2>   
                            <div id="infocont">
                                <h3>Informazioni Contenuto</h3>
                                <xsl:apply-templates select="//tei:msContents" />
                            </div>
                             </article>
                                <article>
                                    <div id="infodesc">
                                     <xsl:apply-templates select="//tei:physDesc" />
                                    </div>
                                </article>
                                <article>
                                    <div id="infoedit">
                                     <h3>Informazioni editoriali</h3>
                                        <xsl:apply-templates select="//tei:history" />
                                    </div>
                               
                          </article>   
                      
                    </div>
                    
                        <!--legenda basata su informazioni ricavate dalle info delle prolusioni-->
                       
                        <div id="fenomenilinguistici">
                            <div class='legenda'>
                                <h3>Legenda</h3>
                                <ul class='legend-labels'>
                                    <li><span></span>Correzione editore</li>
                                    <li><span></span>Termine</li>
                                    <li><span></span>Glottonimo</li>
                                    <li><span></span>Es. linguistico</li>
                                    <li><span></span>Gap</li>
                                    <!--&lt e &gt equivale a  <>-->
                                    <li><b>&lt;&gt;</b><br />Aggiunte a margine</li>
                                    <li><b>^</b> <br />Aggiunte sul testo</li>
                                    <li><b>#</b> <br />Supplemento editore</li>
                                </ul>
                            </div>
                           
                        
                            
                            <div id="bottoni">
                                <h3>Visualizzazione dei fenomeni linguistici principali</h3>
                                <button type="button" id="abbreviazioni">Abbreviazioni</button>
                                <button type="button" id="del">Cancellazioni</button>
                                <button type="button" id="reg">Correzioni</button>
                                <button type="button" id="term">Terminologia</button>
                                <button type="button" id="esling">Esempi linguistici</button>
                                <button type="button" id="add">Aggiunte</button>
                                <div class="gaps">
                                    <label class="container">
                                        <input type="checkbox" id="gap">
                                        </input>
                                        Gap
                                    </label> 
                                </div>
                            </div>
                        </div>
                    </div>
                    
                
                
                
                
                
                <article id="p10">
                    <h2> Pagina 10 </h2>
                    <button type="button" id="girap10"> Gira pagina</button>
                    <div class="flexpage">
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='Pro2_10']" />
                            <xsl:apply-templates select="//tei:surface[@xml:id='Pro2_10R']" />
                        </div>
                        <div class="testoorig">
                            <h3>Testo originale</h3>
                            <xsl:apply-templates select="//tei:body/tei:div[@n = '10']" />
                        </div>
                        
                        <div id="traduzionepag10">
                            <h3>Traduzione</h3>
                            <xsl:apply-templates select="//tei:div[@type='traduzione_P10']" />
                        </div>
                    </div>
                </article>
                <article id="p11">
                    <h2> Pagina 11 </h2>
                    <div class="flexpage">
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='Pro2_11']" />
                        </div>
                        <div class="testo">
                            <h3>Testo originale</h3>
                            <xsl:apply-templates select="//tei:body/tei:div[@n = '11']" />
                        </div>
                        <div id="traduzionepag11">
                            <h3>Traduzione</h3>
                            <xsl:apply-templates select="//tei:div[@type='traduzione_P11']" />
                        </div>
                    </div>
                </article>


                  
                    <div id="infogloss">
                            <article>
                            <h2>Glossario</h2>   
                            <div id="infoterm">
                            <tr>
                                <td><xsl:apply-templates select="//tei:item"/></td>
                            </tr>
                            </div>
                            
                             </article>    
                    </div>

                
                <div id="bibliografia">
                    <h2> Bibliografia </h2>
                    <div class="bibl">
                        <xsl:apply-templates select="//tei:listBibl" />
                    </div>
                </div>
                
                <div id="appendice">
                    <h2 id="about">Riferimenti</h2>
                    <xsl:apply-templates select="//tei:editionStmt"/>
                </div>
            </body>
        </html>
    </xsl:template>
    
    


    <!-- TEMPLATE APLLICATI-->

      <!-- Template msContents -->
    <xsl:template match="tei:msContents">
        <b>Titolo:</b><xsl:value-of select="//tei:msItem/tei:title" />
        <br />
        <b>Autore: </b><xsl:apply-templates select="//tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:author" />
        <br />
        <b>Lingua: </b><xsl:value-of select="//tei:language" />
        <br />
        <b>Acquisizione:</b><xsl:apply-templates select="//tei:settingDesc/tei:setting/tei:name" />
        <br />
        <b>Data:</b><xsl:value-of select="//tei:time" />
    </xsl:template>

    <!-- Template physDesc -->
    <xsl:template match="tei:physDesc">
        <xsl:element name="div">
            <xsl:element name="h3">Descrizione fisica</xsl:element>
            <xsl:element name="div">
                <b>Supporto: </b>
                <xsl:element name="a">
                    <xsl:apply-templates select="current()//tei:support" />
                </xsl:element> 
                <br />
                <b>Quantità: </b>
                <xsl:element name="a">
                    <xsl:apply-templates select="current()//tei:extent" />
                </xsl:element>
                <br />
                <b>Condizioni: </b>
                <xsl:element name="a">
                    <xsl:apply-templates select="current()//tei:condition" />
                </xsl:element>
                <br />
                <b>Layout:</b>
                <xsl:element name="a">
                    <xsl:apply-templates select="current()//tei:layout" />
                </xsl:element>
                <br />
                <b>Grafia: </b>
                <xsl:element name="a">
                    <xsl:apply-templates select="current()//tei:typeDesc" />
                </xsl:element> 
                <br />
                <b>Mani: </b>
                <xsl:element name="a">
                    <xsl:apply-templates select="current()//tei:handDesc" />
                </xsl:element>
            </xsl:element>
        </xsl:element>
    </xsl:template>


        <!-- Template Glossario -->
        <xsl:template match="tei:gloss"> 
        <span style="display: block; margin: 0.5em 0 0.5em 0.5em; min-height: 2.0 em;">
            <span style="float: center; font-weight: bold;"> -----</span>
            <span style="display: block; margin-left: 2.0 em;"><xsl:apply-templates/></span>
             <span style="float: center; font-weight: bold;"> -----</span>
        </span>
    </xsl:template>

    
    <!-- Templates dei fenomeni linguistici preponderanti del documento -->
    
    <!-- Cancellature -->
    <xsl:template match="tei:del">
        <del><xsl:apply-templates /></del>
    </xsl:template>
    
    <!-- Aggiunte -->
    <xsl:template match="tei:add">
        <xsl:choose>
            <xsl:when test="current()[@place='margin']">
            <!--&lt; less than &gt; greater than-->
                <add><b>&lt;</b><i>(<xsl:apply-templates />)<b>&gt;</b></i></add>
            </xsl:when>
            <xsl:otherwise>
                <add><b>^</b><i>(<xsl:apply-templates />)</i></add>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>


    
    <!-- Supplied -->
    <xsl:template match="tei:supplied">
        <add><b>#</b><i>(<xsl:apply-templates />)</i></add>
    </xsl:template>
    
    <!-- Forma originale -->
    <xsl:template match="tei:orig">
        <orig><xsl:apply-templates /></orig>
    </xsl:template>
    
    <!-- Forma regolarizzata (reg) -->
    <xsl:template match="tei:reg">
        <reg><xsl:apply-templates /></reg>
    </xsl:template>
    

    <!-- Elementi mancanti --> 
    <xsl:template match="tei:gap">
        <span class="gap">(gap)</span>
    </xsl:template>
    
    <!-- Termini stranieri e corsivo --> 
    <xsl:template match="tei:foreign | tei:hi[@rend = 'italic']">
        <i><xsl:apply-templates /></i>
    </xsl:template>
    
    <!-- Grassetto --> 
    <xsl:template match="tei:hi[@rend = 'bold']">
        <b><xsl:apply-templates /></b>
    </xsl:template>
    
    <!-- Sottolineature --> 
    <xsl:template match="tei:emph[@rend = 'underline']">
        <u><xsl:apply-templates /></u>
    </xsl:template>

    <!-- Glottonimo -->
    <xsl:template match="tei:lang">
        <xsl:element name="span">
            <xsl:attribute name="class">lang</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    
    
    <!-- Esempio linguistico -->
    <xsl:template match="tei:mentioned">
        <xsl:choose>
            <xsl:when test="current()[@rend='underline']">
                <mentioned>
                    <u>
                        <xsl:apply-templates />
                    </u>
                </mentioned>
            </xsl:when>
            <xsl:otherwise>
                <mentioned>
                    <xsl:apply-templates />
                </mentioned>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
        <!-- Termini -->
    <xsl:template match="tei:term">
        <xsl:element name="span">
            <xsl:attribute name="class">term</xsl:attribute>
            <xsl:value-of select="current()" />
        </xsl:element>
    </xsl:template>
    
    <!-- Abbreviazioni -->
    <xsl:template match="tei:abbr">
        <xsl:element name="span">
            <xsl:attribute name="class">abbr</xsl:attribute>
            <xsl:value-of select="current()" />
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:expan">
        <xsl:element name="span">
            <xsl:attribute name="class">expan</xsl:attribute>
            (expan)<i><xsl:value-of select="current()" /></i>(expan)
        </xsl:element>
    </xsl:template>
    

    
    <!-- Page beginning --> 
    <xsl:template match="tei:pb">
        <xsl:element name="div">
            <xsl:attribute name="id">Pagina_<xsl:value-of select="current()/@n" /></xsl:attribute>
        </xsl:element>
    </xsl:template>
    
    <!-- Line beginning --> 
    <xsl:template match="tei:lb">
        <br />
        <xsl:element name="span">
            <xsl:attribute name="class">NumeroRiga_</xsl:attribute>
            <xsl:attribute name="id"><xsl:value-of select="current()/@xml:id"/></xsl:attribute>
            <b><xsl:value-of select="@n" /></b>
            <xsl:value-of select="text()"/>
        </xsl:element>
    </xsl:template>

                     <!--concat è UNA FUNZIONE DI XPATH-->
                                <!--concat(string,string,...)	Returns the concatenation of the strings
                                Example: concat('XPath ','is ','FUN!')
                                Result: 'XPath is FUN!'-->            

    <!-- Template immagini -->
    <xsl:template match="tei:surface">
        <xsl:element name="img">
            <xsl:attribute name="src">
                <xsl:value-of select="tei:graphic/@url" /> 
            </xsl:attribute>
        </xsl:element>
    </xsl:template>
    
  
    
       <!-- Template bibliografia -->
        <!--Per ripulire lo spazio bianco, possiamo usare la funzione normalize-space(). Fa tre cose:
                        Rimuove tutti gli spazi iniziali.
                        Rimuove tutti gli spazi finali.
                        Sostituisce qualsiasi gruppo di spazi bianchi consecutivi con un singolo spazio.-->
                        
    <xsl:template match="tei:listBibl">
        <xsl:for-each select="current()/tei:bibl">
            <xsl:element name="li">
                <xsl:for-each select="current()//tei:author">
                    <xsl:value-of select="normalize-space(current())" />,
                </xsl:for-each> 
                <i><xsl:value-of select="current()/tei:title" /></i>. 
                <xsl:apply-templates select="current()/tei:pubPlace" />,
                <xsl:value-of select="current()/tei:publisher" />,
                <xsl:value-of select="current()/tei:date" />.
            </xsl:element>
        </xsl:for-each>
    </xsl:template>
    
    <!-- Informazioni sull'edizione -->
    <xsl:template match="tei:editionStmt">
        <b><xsl:value-of select="current()/tei:edition"></xsl:value-of></b>
        <p><b>Progetto a cura di: </b> <i><xsl:value-of select="current()/tei:respStmt/tei:name[@xml:id='LL']"></xsl:value-of></i></p>
        <p><b>Coordinato da: </b> <i><xsl:value-of select="current()/tei:respStmt/tei:name[@xml:id='AMDG']"></xsl:value-of></i></p>
        <p><b>Traduzione di: </b> <i><xsl:value-of select="//tei:name[@ref='EF']"></xsl:value-of></i></p>
    </xsl:template>
    
</xsl:stylesheet>
