https://docs.google.com/document/d/1RporJoiTeC_yCBhbs0_fq8BOIWxrt1J42y043Vx-Qyc/edit

# INTRODUZIONE 
Ogni giorno - come moltissime altre tech company - utilizziamo e ci appoggiamo a software Open Source per realizzare e migliorare i nostri prodotti.

L’Open Source non è solo uno strumento da utilizzare, ma può diventare anche un’opportunità per dare il nostro contributo, attrarre nuovi talenti e migliorare il nostro software.

Promuoviamo l’Open Source all'interno dei nostri team fino a farlo diventare parte della cultura aziendale, per crescere e confrontarci. Strutturiamoci per farlo al meglio ed eccellere anche in questo.

# OBIETTIVI
Gli obiettivi di queste linee guida sono: 

1.  Definire cosa può diventare Open Source.
2.  Avere un flusso ben strutturato che favorisca la nascita e il mantenimento nel tempo dei software fornendo il giusto supporto.
3.  Semplificare il lavoro, per gestire al meglio il rilascio di codice Open Source e incoraggiare contributi esterni. Possono fungere da faro per i meno esperti e dare maggior lustro ai nostri software.
    

# COSA PUÒ DIVENTARE OS
Possono diventare OS tutte quelle librerie, tool, bundle, plugin e prodotti che non contengono tecnologia proprietaria specifica del nostro business.

Non può diventare OS tutto ciò che ha logiche di business accoppiate con i nostri prodotti o che fanno riferimento a entità del nostro dominio.

Il codice che scriviamo quotidianamente è di proprietà intellettuale dell'azienda e il suo rilascio in OS è subordinato all'approvazione della stessa, che si riserva il diritto di negare la distribuzione qualora possa costituire un vantaggio verso i competitor.

# COME INIZIARE
1.  Rendere un progetto Open Source è una responsabilità. Per assicurare il mantenimento nel tempo è meglio evitare la presenza di un singolo maintainer.  
    Discutine col team e con il tuo responsabile per capirne insieme la fattibilità.  
    È importante che tutti siano d'accordo perchè sarà il team ad avere responsabilità sul software OS.
2.  Invia la candidatura a [opensource@immobiliare.it](mailto:opensource@immobiliare.it) indicando il repository GitLab del tuo software (opzionale se nuovo), allegando una breve descrizione con le caratteristiche e i maintainers che se ne occuperanno.  
    Il software sul quale si contribuisce non deve essere obbligatoriamente nuovo ma potrebbe anche essere già presente su GitHub: in questo caso basterà forkarlo nella nostra organizzazione.
3.  Attendi l'approvazione della candidatura. La richiesta verrà presa in esame da un comitato OS che procederà ad una review per garantire che sia conforme alle policy aziendali.
4.  In caso di esito positivo il comitato ti aiuterà a creare e configurare il repository nella nostra organizzazione GitHub.
    

# I MAINTAINERS
I maintainers - identificati dal responsabile del team - sono coloro che si occuperanno del mantenimento e dell'evoluzione del software nel tempo.

Sarà loro il compito di definire l'evoluzione del progetto in accordo anche con le necessità dell'azienda, seguire le segnalazioni e gli eventuali contributi esterni.

-   Ogni maintainers utilizzerà il proprio account personale di GitHub.
-   In caso di registrazione pacchetto su un package manager è caldamente consigliabile che non sia mai una e una sola persona ad essere indicata come maintainer.
-   Qualora il team prendesse in forza un nuovo collega lo stesso avrà l'opportunità di entrare a far parte dei maintainers previa autorizzazione del responsabile del team.
-   Invece se il team perdesse un maintainer quest’ultimo perderebbe questo diritto e diventerebbe un normale contributor esterno.
    
	
# TUTTI POSSONO ESSERE CONTRIBUTORS
-   Promuovendo un software da rendere OS
-   Aiutando la diffusione del software
-   Effettuando semplicemente una review dell’inglese nelle documentazioni
-   Realizzando loghi
    

# REGOLE E REQUISITI
## Struttura del repository
-   Il file README.md conterrà la descrizione del progetto  e la relativa documentazione per l'installazione e/o l’utilizzo. *  
     A tal proposito è consigliabile fare riferimento al [formato standard interno](http://gitlab.rete.farm/pepita/guideline/docs/blob/master/ReadmeRepository/README.md#template-ufficiali) e alla sezione [README](https://docs.google.com/document/d/1RporJoiTeC_yCBhbs0_fq8BOIWxrt1J42y043Vx-Qyc/edit#heading=h.tyjcwt) 
-   Il file LICENSE.md conterrà il riferimento alla licenza OSI scelta per la distribuzione. *  
     La scelta della licenza dipende dal tipo di software che si realizza, di default andremo ad utilizzare MIT, in casi più particolari se ne potrà selezionare una più idonea insieme al comitato ([https://choosealicense.com](https://choosealicense.com)). In caso di fork si dovrà mantenere il tipo di licenza impostato nel repository padre. 
-   Il file CONTRIBUTING.md indicherà le modalità di partecipazione al progetto per i membri esterni.   
    Sarà poi necessario al suo interno riportare e mantenere aggiornato l'elenco dei contributors.
-   Il file CHANGELOG.md conterrà la lista delle modifiche nelle varie versioni. 

Si consiglia di seguire il formato maggiormente adottato nella community per il linguaggio utilizzato, ad esempio: [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) per PHP e [Semantic Release](https://github.com/semantic-release/semantic-release) per Javascript.
    

## Amministrazione del progetto
-   Per le librerie i maintainers gestiranno anche la pubblicazione degli aggiornamenti  nel package manager di riferimento. *
-   I maintainers si occuperanno di coordinare l'attività sul repository:  gestione delle issue, verificare e integrare Pull Request etc.  
     Le PR dovranno essere corredate da test volti a fornire opportuna code coverage.
-   Integrare nel progetto sistemi di automazione come la CI *  
     ex. GitHub Actions oppure CircleCI
-   Il repository dovrà contenere al suo interno i template atti a definire uno standard per l’apertura di issues e pull requests: [ https://docs.github.com/en/github/building-a-strong-community/using-templates-to-encourage-useful-issues-and-pull-requests](https://docs.github.com/en/github/building-a-strong-community/using-templates-to-encourage-useful-issues-and-pull-requests)
    

## Convenzioni
  - Il software dovrà essere scritto e documentato in inglese *
  - Il naming del progetto dovrà seguire le linee guida proprie dell'ambiente/linguaggio utilizzato: *
  - per i prodotti potrà essere semplicemente il nome dello stesso 
  - per software multipiattaforma (client, bind etc.) è consigliabile utilizzare come nome del software un suffisso a indicare il linguaggio utilizzato (Es. stats-client-php o stats-client-node).
  - Il codice dovrà seguire le guidelines del linguaggio e/o quelle identificate dal proprio team *
  - Il progetto dovrà essere versionato seguendo la specifica SemVer *  
     - [https://semver.org](https://semver.org)
  - Se si utilizzano namespace, come primo livello si dovrà utilizzare ImmobiliareLabs *
  - Nella sezione `authors` nei classici file di configurazione come `package.json` o `composer.json` indicare sempre e solo: "name": "Immobiliare Labs” e "email": “opensource@immobiliare.it" *

* Obbligatorio


# README
## Importanza di un buon README
-   È la prima cosa che tutti vedono quindi è importante catturare l'attenzione
-   Un buon readme incuriosisce le persone
-   È più difficile avere trazione per meriti intrinsechi del "software" che non per la sua presentazione. È quindi fondamentale dare risalto a questa parte per avere un gancio iniziale sull'utente
    

## Principi per un buon README 
-   Cosa fa il software?
-   Che problema risolve?
-   Lo fa in maniera migliore dei competitor (se esistono)? In che modo (highlight dei vantaggi)?
-   Come installarlo?
-   Quali sono i concetti base da conoscere?
-   Dove trovo maggiori informazioni o riferimenti?
    

## Strutturare un README
### LOGO (Software + ImmobiliareLabs)
Avere un logo che identifichi il software è sempre una cosa buona ed è sintomo di cura e professionalità.

In prima battuta è sufficiente il logo di ImmobiliareLabs.  
A lungo termine si potrebbe pensare di avere dei loghi che per stile richiamano una famiglia comune tipo office.
  

### SLOGAN BREVE (BOX DESCRIZIONE)
Compare nel box in alto a destra del repository e nelle card di ricerca e condivisione

Perchè?
-   È il primo elemento con cui le persone vengono a contatto, ciò che ricordano quando condividono.
-   Fa parte della card di preview che viene condivisa sui social

Come?
-   Una emoji (se ha senso) può catturare meglio l'attenzione sul testo 
-   Deve essere ricordato facilmente
-   Deve andare subito dritto al punto (cosa fa)
    

### SLOGAN README
Può riprendere ed allargare lo slogan breve (magari con un sottitolo)

Caratteristiche:
-   Descrive il progetto
-   Cattura l'attenzione ed è breve (non più di 2 piccoli paragrafi)
-   Dice perchè si dovrebbe avere bisogno di questo software
-   Dice perchè è meglio delle eventuali alternative (in breve)
-   È abbastanza generico da catturare l'attenzione anche di chi conosce solo a grandi linee l'argomento

Link & Esempi
-   [Guida sul copywriting](https://backlinko.com/copywriting-guide)
-   [Esempio Hugo](https://github.com/gohugoio/hugo)
-   [Esempio Starship](https://github.com/starship/starship)
    

### BADGE
Badge che identificano elementi utili del software

Perchè?
-   Sono un colpo d'occhio sulle caratteristiche/requisiti del software (compatibilità, piattaforma, utilizzo di style guide, CI, presenza/compatibilità test etc.)
-   Aiutano a mostrare gli indicatori di qualità del software in modo da metterne in risalto la professionalità

Dove iniziare?
-   [Shields.io](http://shields.io/)
-   [poser.pugx.org](https://poser.pugx.org/)
  

### QUICK LINKS BAR [OPZIONALE]
-   È una sequenza di link (solitamente divisi da pipe, Website | Forum | Guide...), di solito posizionato dopo lo “slogan breve”, che permettono all'utente di navigare velocemente tra le varie risorse a disposizione
-   È opzionale, non sempre ha senso, è consigliato per progetti più corposi
-   Consigliabile per indicare risorse esterne qualora ce ne fossero
-   In caso di presenza di soli riferimenti interni si consiglia l’utilizzo del classico TOC
    

### HIGHLIGHTS [OPZIONALE]
-   Presentata spesso sotto forma di lista di bullet point
-   È un primo approfondimento delle funzionalità principali che offre lo strumento
-   Riassume velocemente le caratteristiche che dovrebbero invogliare l'utente (solitamente caratteristiche intrinseche del software, non degli strumenti utilizzati per farlo. Non ha senso parlare di "ci sono gli unit test")
-   Solitamente si compone di "Caratteristica: Descrizione Breve" (con il bold sul titolo di sezione)  
    Esempio: "Simple & Elegant: Effectively describe and organize your own flags with a type-safe structure. It will abstract your implementation and consistently reduce the amount of code to manage your feature flags"
    

### WHAT YOU GET or QUICK START or USAGE
-   È il primo incontro con il software per lo sviluppatore (show me the code!)
-   Dà all'utente un colpo d'occhio su quello che otterrà usando lo strumento. Ad esempio una libreria per i log mostrerà quanto è facile loggare ovunque in due righe
-   Serve a catturare realmente l'attenzione (come posso integrarlo nel mio flusso, mi risparmierà del codice etc.)
-   Si consiglia l’aggiunta di diversi tipi di esempi esplicativi, sensati e funzionanti. In caso di una mole elevata di esempi si potrebbero raggruppare anche in una dir `examples` opportunamente linkata dal README
    

### COMPARAZIONE
Se il software è in competizione con altri può essere utile mostrare i vantaggi che si hanno.

-   È difficile convincere chi utilizza già altri tool (average adopters) 
-   Fare una comparazione del codice potrebbe essere d’aiuto 
-   Una tabella comparativa
-   Come per le startup è più facile concentrarsi su gli early adopters o nuovi utenti: coloro che molto probabilmente sono più tentati a soprassedere a funzionalità mancanti o non ancora implementate
    

### POWERED BY
-   Potrebbe essere utile mostrare una lista di prodotti commerciali che utilizzano questo prodotto (ex. la utilizziamo in Immobiliare.it)
-   Se si hanno numeri sull’utilizzo di questo software questa è la sezione giusta  

Esempio: _questo software gestisce n richieste al sec in Immobiliare.it_
    

### DOCUMENTAZIONE
Non è consigliabile avere la documentazione direttamente nel README se non per descrivere magari funzionalità principali.
-   È più difficile da aggiornare per chi la sviluppa 
-   È più difficile da consultare per trovare cose 
-   Rende lungo e quindi noioso il README

La sezione documentazione nel README deve essere quindi molto succinta e illustrare:
-   Come far funzionare il software (o installazione per le librerie)
-   Requisiti di sistema (se necessari)
-   Dove trovare la documentazione (ex. cartella docs in markdown nella codebase) 
-   Come ottenere supporto in caso di dubbi o problemi
    

### CONTRIBUTING
Essendo un software OS la parte del contributo utenti è fondamentale:
-   Descrivere brevemente come contribuire
-   Eventuale code of conduct come file separato (o style guide)
-   Lista dei contributors (come griglia di avatar) per invogliare e ringraziare anche chi ha partecipato esternamente alla crescita del software

Si consiglia di inserire questo tipo di contenuto all’interno del file CONTRIBUTING.md


# COMUNICAZIONE
Fare Open Source non è solo scrivere codice e renderlo pubblico, ma è anche comunicazione e divulgazione. Probabilmente per molti di noi è la parte più complicata e time consuming rispetto a scrivere del codice super performante. Ma è davvero importante farlo e bisogna farlo al meglio se si vuole che il nostro software arrivi all'attenzione del mondo OS.

## Comunicazioni verso l’esterno tramite i canali di Immobiliare Labs
Quando si pubblica per la prima volta un software o si rilascia una nuova funzionalità si consiglia di:
-   Effettuare un post di comunicazione di nuova release sui canali social di Immobiliare Labs (twitter e linkedin) con una brevissima descrizione, indicando la url al repository, con l’utilizzo degli hashtag #release #github #os e quelli inerenti alla tecnologia utilizzata. Se si ha un logo per il proprio software meglio usare il logo e non la card social di github. 
-   Per farlo mettersi in contatto con il Community Manager che faciliterà l’operazione tramite il Team Social Media
-   Come lingua è altamente consigliabile l’utilizzo dell’inglese, specialmente su twitter
-   Invitare i colleghi all’interazione con il post tramite l’opportuno canale mattermost [#[OS] ImmobiliareLabs](https://mattermost.ekbl.net/immobiliare/channels/os-immobiliare-labs)
-   Quando un giorno avremo un blog tecnico pubblico, si consiglia di scrivere un articolo sul software appena rilasciato indicando le motivazioni che hanno portato alla sua realizzazione e le sue peculiarità. Si consiglia di descrivere, qualora ce ne fossero, anche i casi d’uso in cui la libreria ha risolto problemi reali all’interno della nostra company
    

## Comunicazioni verso l’esterno da parte dei maintainers
Quando si pubblica per la prima volta un software si consiglia di notificare la presenza del nuovo software attraverso:
-   i canali delle community locali
-   l’aggiunta del software su l'opportuna [Awesome List](https://github.com/sindresorhus/awesome)
-   proponendo talk nelle community locali e/o conferenze
-   proponendo la sua divulgazione sui podcast tematici
-   subreddit 
-   i canali specifici alla tecnologia del caso
    
Si consigliano anche eventuali comunicazioni interne di approfondimento sulle motivazioni che hanno portato alla realizzazione del software o in caso di migliorie apportate ad un software pre-esistente riportarle tramite un articolo su [https://labs.immobiliare.it/community](https://labs.immobiliare.it/community) 


## Canale Mattermost
Il canale Mattermost dal nome “[OS] Immobiliare Labs” sarà una board informativa per comunicazioni interne di nuove release oppure per richieste di review o di star.  
In questo canale non saranno accettate discussioni ma solo comunicazioni.

