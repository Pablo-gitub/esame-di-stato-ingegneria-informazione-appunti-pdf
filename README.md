# Appunti per l'Esame di Stato Ingegnere Junior - Settore dell'Informazione

**Studiando insieme, si va più lontano!** Questo repository raccoglie appunti, riassunti e soluzioni a prove d'esame passate per la preparazione all'Esame di Stato per l'abilitazione alla professione di Ingegnere Junior, con un focus specifico sul Settore dell'Informazione.

L'obiettivo è creare un documento unico, completo e ben strutturato per agevolare lo studio e la preparazione di tutti i candidati.

## 📚 Struttura del Progetto

Il progetto è organizzato come un documento LaTeX che copre le materie più rilevanti e ricorrenti nelle prove d'esame. La struttura principale è la seguente:

* **Capitolo 1: Sistemi Operativi**
    * Struttura, modelli, gestione di memoria e file system.
    * Sincronizzazione, deadlock, scheduling della CPU.
* **Capitolo 2: Basi di Dati**
    * Modellazione Entità-Relazione (ER) con esempi visivi.
    * Progettazione logica e normalizzazione (1NF, 2NF, 3NF).
    * Linguaggio SQL per la gestione e l'interrogazione dei dati.
* **Capitolo 3: Reti di Calcolatori**
    * Modello ISO/OSI e protocolli TCP/IP.
    * Connessioni stateless/stateful e metodi per la persistenza dello stato.
    * Subnetting e calcolo di sottoreti.
* **Capitolo 4: Programmazione Orientata agli Oggetti (e Fondamenti)**
    * Concetti base di OOP, Abstract Data Type (ADT).
    * Linguaggi compilati vs. interpretati.
    * Algoritmi e complessità computazionale.
* **Capitolo 5: Progettazione del Software**
    * Analisi dei requisiti (funzionali e non funzionali).
    * Diagrammi UML (Casi d'Uso, Classi, Sequenza, Deployment) con esempi.
    * Design patterns comuni.
* **Capitolo 6: Elettronica**
    * Principi di funzionamento di transistori MOS, circuiti CMOS e invertitori.
    * Vantaggi e differenze rispetto ai transistori BJT.
* **Capitolo 7: Sistemi Numerici**
    * Rappresentazione in complemento a due.
    * Operazioni aritmetiche con complemento a due.
* **Sezione Domande e Esercizi**
    * Per ogni capitolo, sono presenti sezioni dedicate a domande teoriche e a esercizi pratici, con le relative soluzioni.

## 🚀 Compilazione del Documento

Per compilare il documento e generare il file `Esame_di_Stato_Ingegnere_Junior_Informazione.pdf`, è necessario avere installato un ambiente LaTeX.

### Requisiti Software

* **VS Code** (consigliato per l'integrazione)
* Estensione **LaTeX Workshop** per VS Code
* Una distribuzione LaTeX (es. **MacTeX** per macOS, **TeX Live** per Linux e Windows, o **MiKTeX** per Windows).

### Istruzioni per la Compilazione

1.  Clona il repository sul tuo computer:
    ```bash
    git clone [https://github.com/tuo-utente/nome-repository.git](https://github.com/tuo-utente/nome-repository.git)
    ```
2.  Apri la cartella del progetto in VS Code.
3.  Installa l'estensione **LaTeX Workshop** se non l'hai già fatto.
4.  Apri il file `main.tex`.
5.  Clicca sul pulsante **"Build LaTeX project"** (l'icona della bacchetta magica) sulla barra degli strumenti di LaTeX Workshop. Potrebbe essere necessario cliccarlo 2-3 volte per compilare correttamente l'indice e la bibliografia.
6.  Il file `main.pdf` sarà generato nella directory principale del progetto e conterra tutto il pdf del progetto.

## 🤝 Come Contribuire

I contributi sono benvenuti! Se vuoi migliorare gli appunti, correggere errori, aggiungere nuovi argomenti o risolvere altri esercizi, segui questi semplici passaggi:

1.  Esegui il fork del repository.
2.  Crea un nuovo branch per le tue modifiche (`git checkout -b feature/nuova-funzionalita`).
3.  Apporta le tue modifiche e committale (`git commit -am 'Aggiunta nuova sezione su...'`).
4.  Esegui il push del tuo branch (`git push origin feature/nuova-funzionalita`).
5.  Apri una Pull Request.
