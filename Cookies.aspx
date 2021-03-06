﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cookies.aspx.cs" Inherits="Cookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <title>RobertoCedioli</title>
</head>
<body>
        <div class="cover" style="padding-bottom:30px;">
        <div class="navbar">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" style="color: white;">RobertoCedioli</a>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="Fotografie.aspx" style="color: white;">fotografie</a>
                        </li>
                        <li>
                            <a href="Materolistici.aspx" style="color: white;">materolistici</a>
                        </li> 
                        <li>
                            <a href="Quadrimensionali.aspx" style="color: white;">quadrimensionali</a>
                        </li>
                        <li>
                            <a href="Contatti.aspx" style="color: white;">contatti</a>
                        </li>
                        <li>
                            <a href="#" style="color: white;">EN</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <asp:Repeater ID="backgroundRepeater" runat="server">
            <ItemTemplate>
                <div class="cover-image" style="background-image: url('<%# Eval("Sfondo") %>')"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-2 col-xs-1"></div>
                <div class="col-lg-6 col-md-6 col-sm-8 col-xs-10 text-center">
                    <img class="img-responsive" src="img/firma trasp.png" />
                </div>
                <div class="col-lg-3 col-md-3 col-sm-2 col-xs-1"></div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-2 col-xs-1"></div>
                <div class="col-lg-6 col-md-6 col-sm-8 col-xs-10 text-center">
                    <p style="color: white;"><%# Eval("Filosofia") %></p>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-2 col-xs-1"></div>                    
                    <br>
                    <br>
                </div>
            </div>
            </ItemTemplate>
        </asp:Repeater>
        
        </div>
        <div class="container" id="cookies" style="padding-top:50px;">
            <p><strong><span style="font-size: 20px">robertocedioli.com privacy policy</span></strong></p>

            <p>
                Informativa ai sensi dell&#39;art. 13 D.Lgs. 196/2003 sulla tutela dei dati personali<br />
                Si fornisce agli utenti la seguente informativa sulla tutela dei dati personali ad ogni effetto di legge (art. 13 D.Lgs.196/2003):
            </p>

            <p>
                <strong>1. FINALIT&Agrave; DEL TRATTAMENTO DEI DATI&nbsp;</strong><br />
                I dati personali sono trattati nel rispetto della legge, dei regolamenti e delle normative comunitarie, nell&#39;ambito della normale attivit&agrave; della Societ&agrave; e secondo finalit&agrave; che seguono:<br />
                a). finalit&agrave; strettamente connesse e strumentali alla gestione dei rapporti in genere, quali quelli con i visitatori del sito;<br />
                b). finalit&agrave; connesse agli obblighi previsti da leggi, da regolamenti e dalla normativa comunitaria, nonch&eacute; da disposizioni impartite da autorit&agrave; a ci&ograve; legittimate dalla legge;<br />
                c). finalit&agrave; funzionali all&#39;attivit&agrave; della Societ&agrave;. Rientrano in questa categoria le seguenti attivit&agrave;:<br />
                - rilevazione del grado di soddisfazione della clientela sulla qualit&agrave; dei servizi resi e sull&#39;attivit&agrave; svolta;<br />
                - invio di informazioni commerciali via e-mail;<br />
                - indagini di mercato ed elaborazioni statistiche.<br />
                I dati personali utilizzati, previo Suo consenso, sono quelli acquisiti a seguito della conclusione dei contratti di abbonamento e/o servizi connessi ad Internet. I dati in oggetto sono gli stessi riportati nel contratto intercorrente con la nostra Societ&agrave;. L&#39;utilizzo dei dati per tale finalit&agrave; &egrave; per lei facoltativo ed un Suo eventuale rifiuto non compromette il proseguimento del rapporto con la nostra azienda.<br />
                <br />
                <strong>2. MODALIT&Agrave; DEL TRATTAMENTO DEI DATI.</strong><br />
                Il trattamento &egrave; realizzato avvalendosi di operazioni indicate all&#39;art.4, comma 1, lett. a), T.U.: raccolta, registrazione, organizzazione, conservazione, consultazione, elaborazione, modificazione, selezione, estrazione, raffronto, utilizzo, interconnessione, blocco, comunicazione, cancellazione e distribuzione dei dati. Le operazioni possono essere svolte con o senza l&#39;ausilio di strumenti elettronici o comunque automatizzati. Il trattamento &egrave; svolto dal titolare e/o dagli incaricati del trattamento.<br />
                <br />
                <strong>3. CONFERIMENTO DEI DATI.</strong><br />
                Il conferimento dei dati &egrave; facoltativo&nbsp;e l&#39;eventuale rifiuto di fornire tali dati non ha alcuna conseguenza; esso &egrave; strettamente necessario ai fini dello svolgimento delle attivit&agrave; di cui al punto 1.<br />
                <br />
                <strong>4. RIFIUTO DI CONFERIMENTO DEI DATI.</strong><br />
                L&#39;eventuale rifiuto da parte dell&#39;interessato di conferire dati personali nel caso di cui al punto 3 non comporta&nbsp;l&#39;impossibilit&agrave; di adempire alle attivit&agrave; di cui al punto 1.<br />
                <br />
                <strong>5. COMUNICAZIONE DEI DATI.</strong><br />
                I dati personali saranno conservati presso la sede dell&#39;azienda con garanzia di tutela dei diritti dell&#39;interessato. I dati non saranno comunicati ad altri soggetti, n&eacute; saranno oggetto di diffusione.
            </p>

            <p>
                <strong>6. DIFFUSIONE DEI DATI.</strong><br />
                I dati personali sono soggetti a diffusione in forma aggregata, anonima e per fini statistici al servizio Google Analitycs.<br />
                In qualsiasi momento Lei ha il diritto di ottenere dal titolare al trattamento la cancellazione o la trasformazione dei suddetti dati, a seguito art. 7 sotto riportato;<br />
                <br />
                <strong>7. DIRITTI DELL&#39;INTERESSATO.</strong><br />
                L&#39;art.7, T.U., conferisce all&#39;interessato l&#39;esercizio di specifici diritti, tra cui quello di ottenere dal titolare la conferma dell&#39;esistenza o meno di propri dati personali che lo riguardano, anche se non ancora registrati, e la loro comunicazione in forma intelligibile; l&#39;interessato ha diritto di ottenere indicazione circa l&#39;origine dei dati personali, delle finalit&agrave; e delle modalit&agrave; del trattamento, della logica applicata in caso di trattamento effettuato con ausili elettronici, degli estremi identificativi del titolare, dei responsabili e del rappresentante designato ai sensi dell&rsquo;art. 5 comma 2 T.U. e dei soggetti e/o categorie cui i dati possono essere comunicati. L&rsquo;interessato ha altres&igrave; il diritto di ottenere l&#39;aggiornamento, la rettificazione o, se del caso, l&#39;integrazione dei dati; la cancellazione, la trasformazione in forma anonima o il blocco dei dati trattati in violazione della legge.<br />
                L&rsquo;interessato ha il diritto di opporsi, per motivi legittimi, al trattamento dei dati personali che lo riguardano.<br />
                Le richieste vanno rivolte al seguente indirizzo: info@robertocedioli.com.<br />
                <br />
                <strong>8. RESPONSABILE DEL TRATTAMENTO.</strong><br />
                Il titolare e responsabile del trattamento dei dati personali &egrave; Roberto Cedioli&nbsp;.

                <p>
                    <br />
                    <strong>COOKIE POLICY</strong><br />
                    Per &nbsp;permettere la &ldquo;navigazione&rdquo; e la perfetta funzionalit&agrave; di questo sito, talvolta installiamo sul tuo dispositivo dei piccoli file di dati che si chiamano &quot;cookies&quot;.
                </p>

                <p>
                    <strong>Cosa sono i Cookie?</strong><br />
                    Un cookie &egrave; un piccolo file di testo che i siti salvano sul tuo computer o dispositivo mobile mentre li visiti. Grazie ai cookies il sito ricorda le tue azioni e preferenze (per es. login, lingua, dimensioni dei caratteri e altre impostazioni di visualizzazione); il cookie viene poi riletto e riconosciuto solo dal sito web che lo ha inviato ogniqualvolta si effettui una connessione successiva, ci&ograve; al fine di evitare, al successivo accesso, di non dover reinserire informazioni che hai gi&agrave; immesso nel sistema.<br />
                    <br />
                    <strong>Come e quali cookie si utilizzano nel nostro sito?</strong><br />
                    I cookie utilizzati possono essere qualificati in categorie che qui di seguito si descrivono:<br />
                    <em><strong>Cookie di sessione:</strong></em> questi cookie non vengono memorizzati in modo persistente sul dispositivo dell&rsquo;utente/visitatore e svaniscono con la chiusura del browser. Sono utilizzati al fine di trasmettere gli identificativi di sessione necessari per consentire l&rsquo;esplorazione sicura ed efficiente del sito. I cookie di sessione utilizzati evitano il ricorso ad altre tecniche informatiche potenzialmente pregiudizievoli per la riservatezza della navigazione degli utenti/visitatori e vengono impiegati anche per migliorare l&rsquo;erogazione dei servizi.<br />
                    <em><strong>Cookie di terza parte:</strong></em> anch&rsquo;essi possono essere sia persistenti sia di sessione; sono generati e gestiti da responsabili estranei al sito visitato dall&rsquo;utente e vengono utilizzati, ad esempio, per conoscere il numero di pagine visitate all&rsquo;interno del sito stesso (i cosiddetti &ldquo;cookie statistici&rdquo; o &ldquo;cookie analytics&rdquo;) oppure per pubblicare contenuto o pubblicit&agrave; sul sito che si sta visitando.
                </p>

                <p>
                    <br />
                    <strong>Principali finalit&agrave; dei cookie:</strong><br />
                    <strong><em>Cookie persistenti:</em></strong> questi cookie rimangono memorizzati, fino alla loro scadenza, sul dispositivo dell’utente/visitatore. Vengono usati al fine di agevolare la navigazione all’interno del sito e la sua corretta fruizione, per facilitare l’accesso ai servizi che richiedono l’autenticazione (evitando che gli utenti debbano reinserire le credenziali di autenticazione ad ogni accesso ai servizi), a fini statistici, per conoscere quali aree del sito sono state visitate, nonché, in alcuni casi, per una gestione ottimale delle pagine e degli spazi pubblicitari ovvero per erogare contenuti e pubblicità in linea con le scelte operate dai navigatori.
                    <strong><em>Cookie di sessione:</em></strong> questi cookie non vengono memorizzati in modo persistente sul dispositivo dell’utente/visitatore e svaniscono con la chiusura del browser. Sono utilizzati al fine di trasmettere gli identificativi di sessione necessari per consentire l’esplorazione sicura ed efficiente del sito. I cookie di sessione utilizzati evitano il ricorso ad altre tecniche informatiche potenzialmente pregiudizievoli per la riservatezza della navigazione degli utenti/visitatori e vengono impiegati anche per migliorare l’erogazione dei servizi.
                    <strong><em>Cookie di prima parte:</em></strong> possono essere sia persistenti sia di sessione; sono gestiti direttamente dal proprietario e/o responsabile del sito e vengono utilizzati, ad esempio, per garantirne il funzionamento tecnico (i cosiddetti “cookie tecnici”) o tenere traccia di preferenze espresse in merito all’uso del sito stesso.
                    <strong><em>Cookie di terza parte:</em></strong> anch’essi possono essere sia persistenti sia di sessione; sono generati e gestiti da responsabili estranei al sito visitato dall’utente e vengono utilizzati, ad esempio, per conoscere il numero di pagine visitate all’interno del sito stesso (i cosiddetti “cookie statistici” o “cookie analytics”) oppure per pubblicare contenuto o pubblicità sul sito che si sta visitando.
                    <strong><em>Cookie tecnici:</em></strong> sono i cookie necessari per consentire la navigazione del sito e l&rsquo;utilizzo di alcuni prodotti e servizi. Vengono utilizzati, ad esempio, per riconoscere l&rsquo;utente che si &egrave; autenticato alla propia casella di posta elettronica e mantenere aperta la sessione anche quando visita altre pagine del sito, oppure per garantire alcune misure di sicurezza del sito e monitorarne il corretto funzionamento.<br />
                    <strong><em>Cookie statistici o &ldquo;analytics&rdquo;:</em></strong> questi cookie vengono utilizzati per monitorare le performances del sito, per esempio per conoscere il numero di pagine visitate o il numero di utenti che hanno visualizzato una determinata sezione. L&rsquo;analisi di questi cookie genera dati statistici anonimi e aggregati senza riferimento alcuno all&rsquo;identit&agrave; dei navigatori del sito. Sono utili anche per valutare eventuali modifiche e miglioramenti da apportare al sito stesso.<br />

                    <p>
                        <br />
                        <strong>Come gestire i Cookie</strong><br />
                        Per ottenere un&#39;esperienza ottimale di navigazione ti consigliamo di mantenere attivo l&#39;uso di cookie: senza di essi alcune funzionalit&agrave; del sito potrebbero essere inibite. Puoi cancellare i cookie gi&agrave; presenti nel computer e impostare quasi tutti i browser in modo da bloccarne l&#39;installazione. La maggior parte dei browser permette di cancellare i cookie dal disco fisso del computer, di bloccare l&rsquo;accettazione dei cookie o di ricevere un avviso prima che un cookie venga memorizzato. Tuttavia, se l&rsquo;utente blocca o cancella un cookie, potrebbe essere impossibile ripristinare le preferenze o le impostazioni personalizzate specificate in precedenza e la nostra capacit&agrave; di personalizzare l&rsquo;esperienza dell&rsquo;utente sar&agrave; limitata.
                    </p>

                    <p>
                        <br />
                        &nbsp;
                    </p>
        </div>
</body>
    <!--Cookie-->
	<script src="js/cookiechoices.js"></script>
	<script>//<![CDATA[
	    document.addEventListener('DOMContentLoaded', function (event) {
	        cookieChoices.showCookieConsentBar('Questo sito utilizza cookie tecnici e analytics, anche di terze parti. Per avere maggiori informazioni sui cookie clicca "Maggiori Informazioni".  ',
                'Ok', 'Maggiori Informazioni',
                         'http://www.robertocedioli.com/Cookies.aspx#cookies');
	    });
	    //]]></script>
</html>
