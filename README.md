# Progetto-reti-logiche-2022

todo : [indici di pagina]

## Introduzione -> spiegazione del problema
## Codifica convoluzionale e introduzione al progetto
Una codifica convoluzionale è un tipo di codifica utilizzata per la *Forward Error Correction* (FEC) in sistemi di telecomunicazioni basati su canali monodirezionali.\
Quindi un codice generato da una codifica convoluzionale, detto anche codice convoluzionale, è un codice che trasforma ogni parola $P_1$ in una parola $P_2$. Definite quindi $l_1 = lenght(P_1)$ e $l_2 = lenght(P_2)$ si definisce il rapoorto $l_1/l_2$ come *tasso di trasmissione del convolutore* (*rate*); $l_2 \geq l_1$.\
Inoltre la trasformazione è una funzione degli ultimi $k$ bit in entrata, $k$ è quindi la *lunghezza dei vincoli* del codice.\
\
Lo scopo del progetto è quello di implementare un componente hardware, tramite l'utilizzo del linguaggio di specifica hw VHDL, in grado di interfacciarsi con una memoria e di applicare una codifica convoluzionale con $rate = \frac{1}{2}$ e $k = 3$\
[immagine del nostro convolutore]
## Specifiche di progetto
[inserire interfaccia del componente hardware specificato]
[inserire funzionamento di memoria ram fornita in tb,tempo di clock target, al tre info di base scrappate dalla codifica]
## Architettura -> approccio, scelte implementative , descrizione della macchina a stati

### Considerazioni iniziali su VHDL
In questo progetto, durante la fase di progettazione e successivamente di sviluppo, non verrà preso mai in considerazione l'utilizzo del costrutto *process* e di conseguenza di architetture di tipo *behavioral* . Questa scelta implementativa, che si riflette sia in fase di sintesi che di implementazione su FPGA, non [sottolineatura magari] è dovuta al fatto che l'autore del progetto creda che l'utilizzo di *process* sia scorretto in qual si voglia forma o maniera; qui si vogliono riconoscere le potenzialità e le funzionalità implementative/strutturali che ne derivano dall'utilizzo di quest'ultimi ma si vuole anche risaltare il maggior strato di astrazione portato da questo costrutto rispetto ad architetture *dataflow* o *structural* (aumento dovuto alle serializzazione di istuzioni che per natura fisica di un componente hw dovrebbero essere paralle).\
È per il motivo sopra citato e per la non diretta corrispondenza tra codice scritto e struttura interna del sintetizzato hw che in questo progetto sono state scartate implementazioni di tipo *behavioral* (vedere se mettere questa ultima parte )anche se magari più "digeribili" a livello di lettura del codice. 

(fuori paragrafo) Tenendo conto delle considerazioni sopra fatte viene ora presentata la prima macchina a stati in grado già di soddisfare ampiamente requisiti di timing sia post sintesi sia post implementazione; viene discussa quest'ultima in quanto alla base del design finale e da considerarsi design ottimale per periodi di clock $clockPeriod \approx [35,100] ns$

## Primo design FSM
[immagine della macchina a stati originale]
### Stati della macchina
- Idle - idle : stato della macchina iniziale dove questa attende che il segnale `i_start` venga portato alto; una volta che ciò accade in questo stato vengono anche settati `o_en = '1'` e `o_address = 0` in modo tale da rendere il modulo pronto a ricevere il numero di parole dalla ram. Questo anche coincide con lo stato di reset della FSM
- Read word count - r_wc : stato della macchina dove viene settato il numero di parole da codificare 
- Read word  - r : stato della macchina adibito alla lettura della prossima parola da codificare. In particolare in questo stato vengono settati i valori valori di `o_en = '1'` e `o_address` in modo tale da leggere la parola da codificare in questo ciclo della FSM
- Process - p_0 -> p_7 : serie di 8 stati della macchina utilizzati per l'effettiva codifica della parola. Questi servono in particolare a ciclare sul singolo bit della parola considerata, oltre a contribuire alla sincronizzazione dei sottomoduli del progetto(descritto in maniera dettagliata più avanti). Espandiamo specificatamente:
    - p_0 : in questo stato viene anche letta la parola richiesta precedentemente nello stato r
    - p_3, p_7 : in questi stati vengono settati `o_en = '1'` e `o_we = '1'` in modo tale da poter parallelizzare la scrittura della parola in memoria con la sua effettiva computazione
- Done - d : stato della macchina che si dedica al controllo del numero di parole rimaste da codificare. Se il numero di parole è $\neq 0$ allora la FSM ritornerà alla stato r altrimenti rimarrà in qiesto stato fintanto che `start = '1'` 
## Design finale FSM
Come precedentemente scritto la macchina sopra specificata superava i test bench per periodi di clock $clockPeriod \approx [15,100] ns$ nelle simulazione behavioral e post-sintesi ma falliva post-implementazione per $clockPeriod < \approx 35 ns$ dove le latenze dell'FPGA erano maggiori. Possibile soluzione sarebbe quella di aggiungere altri 2 stati così da poter mitigare i ritardi dovuti alla lettura della memoria

### Rapida analisi di trade-off per l'aggiunta di 2 stati
- Analisi di spazio : $numStati = 12$ e utilizzando la codifica binaria $log_2(numStati) \approx 3.6$ quindi si utilizzano 4 bit per la rappresentazione di tali stati. È facile verificare che l'aggiunta di 2 stati in più non richiede allocamento addizionale di memoria su FPGA.
- Analisi di tempo : essendo uno di questi stati eseguito solo una volta leggendo il numero di parole contenuto in una ram esso verrà trascurato. Ne deriva che $numStati_{m1} = 10$ e $numStati_{m2} = 11$; quindi\
$numStati_{m1} * clockPeriod_{m1 \space min} > numStati_{m2} * clockPeriod_{m2}$ perchè questa modifica alla FSM sia motivata ($clockPeriod_{m1 \space min} = 35 ns$).\
Si ottiene che $clockPeriod_{m2} \leq 31.82 ns$, condizione che verrà poi verificate e discussa nella sezione riguardante i risultati sperimentali

Vengono così aggiunti altri 2 stati:
- Wait word count - w_wc 
- Wait - w
entrambi adibiti alla mitigazione del ritardo dovuto alla lettura della memoria e alla propagazione del segnale in fase di implementazione
[immagine della nuova macchina a stati ]

## Code Overview
Il progetto si divide in 3 entità principali :
- controller : è il responsabile per il corretto funzionamento del componente. Esso, oltre ad essere responsabile per il corretto cycling degli stati, controlla anche i segnali 
- convolutional_encoder : responsabile per la codifica di un singolo bit di una parola
- string_manager :

[immagine del progetto]
## Risultati sperimentali

## Conclusioni
- limiti oggetti del sistema
- limiti su ciò che avrei potuto fare meglio
- possibili implementazioni pratiche