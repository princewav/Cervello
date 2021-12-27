create table if not exists annuncio
(
	idAnnuncio int auto_increment
		primary key,
	locali enum('1', '2', '3', '4', '5', '>5') null,
	fkCucina int null,
	bagni enum('1', '2', '3', '>3') null,
	superficie int(10) null,
	fkBoxAuto int(10) null,
	fkStato int null,
	fkRiscaldamento int(10) null,
	prezzo int(15) null,
	terrazzo tinyint(1) null,
	fkTipologia int null,
	fkContratto int null,
	descrizione text null,
	indirizzo varchar(200) null,
	numeroCivico varchar(10) null,
	fkComune int null,
	cap varchar(5) null,
	fkLocalita int(10) null,
	fkZona int(10) null,
	indirizzoVisibile tinyint(1) null,
	fkFasciaPrezzo int null,
	dataCreazione datetime null,
	dataModifica datetime null,
	giorniAttivo int(10) null,
	visite int(10) null,
	contatti int(10) null,
	note text null,
	fkStatoAnnuncio int null,
	fkAgenzia int null,
	fkCartina int(10) null,
	ranking int(10) null,
	codice varchar(255) null,
	fkPiano int null,
	numeroPiani int null,
	ascensore tinyint(1) null,
	condizionatore tinyint(1) null,
	balcone tinyint(1) null,
	descrizione_it text null,
	descrizione_en text null,
	descrizione_de text null,
	descrizione_fr text null,
	descrizione_es text null,
	descrizione_pt text null,
	descrizione_ru text charset utf8 null,
	descrizione_gr text charset utf8 null,
	fkGiardino int null,
	latitudine float null,
	longitudine float null,
	zoom int(10) null,
	flagIndirizzo tinyint(1) null,
	fkContrattoAffitto int null,
	fkArredamento int null,
	spese varchar(200) null,
	costruttore varchar(100) null,
	statoCantiere text null,
	fkArea int null,
	fkOrientamento int null,
	altitudine varchar(10) null,
	primoPiano tinyint(1) default 0 null,
	Evidenza tinyint(1) default 0 null,
	FotoPlus tinyint(1) default 0 null,
	virtual_tour text null,
	primoPianoPremium tinyint(1) default 0 null,
	fotoPlusPremium tinyint(1) default 0 null,
	lusso tinyint(1) null,
	preferito int(1) default 0 null,
	planimetria varchar(255) null,
	gtxAnnoCostruzione int(4) null,
	gtxNumeroPostiAuto int(4) null,
	gtxEsposizioneInterna tinyint(1) null,
	gtxEsposizioneEsterna tinyint(1) null,
	gtxNumeroCamereDaLetto int(4) null,
	gtxNumeroSoggiornoSalotto int(4) null,
	gtxNumeroAltreCamereStanze int(4) null,
	gtxIngresso int(4) null,
	gtxRipostiglio int(4) null,
	gtxCantina int(4) null,
	gtxMansarda int(4) null,
	gtxTaverna int(4) null,
	gtxCaminetto tinyint(1) null,
	gtxPortaBlindata tinyint(1) null,
	gtxIdromassaggio tinyint(1) null,
	gtxImpiantoAllarme tinyint(1) null,
	gtxPiscina tinyint(1) null,
	gtxCampoTennis tinyint(1) null,
	gtxCancelloElettrico tinyint(1) null,
	gtxFibraOttica tinyint(1) null,
	gtxPortiere tinyint(1) null,
	gtxVideoCitofono tinyint(1) null,
	gtxInfissiEsterni int(4) null,
	gtxImpiantoTv int(4) null,
	gtxVisualTour varchar(255) null,
	gtxDescrizione_per_riviste text null,
	gtxTitolo_per_riviste varchar(255) null,
	gtxAnnuncioInseritoDaGetrix tinyint(1) null,
	fkContattoGtx int(10) null,
	fkTipoMandato int(10) null,
	constraint FK_annuncio_14
		foreign key (fkPiano) references piano (idPiano),
	constraint FK_annuncio_15
		foreign key (fkGiardino) references giardino (idGiardino)
			on update cascade on delete set null,
	constraint FK_annuncio_16
		foreign key (fkContrattoAffitto) references contrattoAffitto (idContrattoAffitto)
			on update cascade on delete set null,
	constraint FK_annuncio_17
		foreign key (fkArredamento) references arredamento (idArredamento)
			on update cascade on delete set null,
	constraint FK_annuncio_18
		foreign key (fkArea) references area (idArea),
	constraint FK_annuncio_19
		foreign key (fkOrientamento) references orientamento (idOrientamento),
	constraint FK_fkContattoGtx_1
		foreign key (fkContattoGtx) references gtxContatto (idContattoGtx)
			on update cascade on delete set null,
	constraint FK_fkTipoMandato_1
		foreign key (fkTipoMandato) references gtxTipoMandato (idTipoMandato)
			on update cascade on delete set null,
	constraint FK_immobile_1
		foreign key (fkStato) references stato (idStato)
			on delete set null,
	constraint FK_immobile_10
		foreign key (fkFasciaPrezzo) references fasciaPrezzo (idFasciaPrezzo)
			on delete set null,
	constraint FK_immobile_12
		foreign key (fkStatoAnnuncio) references statoAnnuncio (idStato)
			on delete set null,
	constraint FK_immobile_13
		foreign key (fkAgenzia) references agenzia (idAgenzia)
			on delete cascade,
	constraint FK_immobile_2
		foreign key (fkRiscaldamento) references riscaldamento (idRiscaldamento)
			on delete set null,
	constraint FK_immobile_3
		foreign key (fkTipologia) references tipologia (idTipologia)
			on delete set null,
	constraint FK_immobile_4
		foreign key (fkCucina) references cucina (idCucina)
			on delete set null,
	constraint FK_immobile_5
		foreign key (fkContratto) references contratto (idContratto)
			on delete set null,
	constraint FK_immobile_6
		foreign key (fkComune) references comune (idComune)
			on delete set null,
	constraint FK_immobile_7
		foreign key (fkLocalita) references localita (idLocalita)
			on delete set null,
	constraint FK_immobile_8
		foreign key (fkZona) references zona (idZona)
			on delete set null,
	constraint FK_immobile_9
		foreign key (fkBoxAuto) references boxauto (idBoxAuto)
			on delete set null
)
charset=latin1;