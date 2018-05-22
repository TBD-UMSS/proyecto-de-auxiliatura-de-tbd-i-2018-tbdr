/**********************I-DEP-YAC-CURR-0-08-05-2018**********************/
--------------- SQL ---------------

ALTER TABLE curr.estudio
  ADD CONSTRAINT estudio_fk FOREIGN KEY (id_dato_personal)
    REFERENCES curr.dato_personal(id_dato_personal)
    ON DELETE CASCADE
    ON UPDATE NO ACTION
    NOT DEFERRABLE;

ALTER TABLE curr.estudio
   ADD CONSTRAINT estudio_fk FOREIGN KEY (id_institucion_educativa)
     REFERENCES curr.institucion_educativa(id_institucion_educativa)
     ON DELETE CASCADE
     ON UPDATE NO ACTION
     NOT DEFERRABLE;

ALTER TABLE curr.experiencia
   ADD CONSTRAINT experiencia_fk FOREIGN KEY (id_dato_personal)
     REFERENCES curr.dato_personal(id_dato_personal)
     ON DELETE CASCADE
     ON UPDATE NO ACTION
     NOT DEFERRABLE;
 
ALTER TABLE curr.experiencia
   ADD CONSTRAINT experiencia_fk FOREIGN KEY (id_empresa)
     REFERENCES curr.empresa (id_empresa)
     ON DELETE CASCADE
     ON UPDATE NO ACTION
     ON DEFERRABLE;


ALTER TABLE curr.certificado
   ADD CONSTRAINT certificado_fk FOREIGN KEY (id_dato_personal)
   REFERENCES curr.dato_personal(id_dato_personal)
   ON DELETE CASCADE
   ON UPDATE NO ACTION
   NOT DEFERRABLE;

ALTER TABLE curr.tipo_certificado
   ADD CONSTRAINT tipo_certificado_fk FOREIGN KEY (id_certificado)
   REFERENCES curr.certificado(id_certificado)
   ON DELETE CASCADE
   ON UPDATE NO ACTION
   NOT DEFERRABLE;

/**********************F-DEP-YAC-CURR-0-08-05-2018**********************/