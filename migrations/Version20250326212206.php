<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20250326212206 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql(<<<'SQL'
            CREATE TABLE client (id INT AUTO_INCREMENT NOT NULL, business_account VARCHAR(255) DEFAULT NULL, event_account VARCHAR(255) DEFAULT NULL, last_event_account VARCHAR(255) DEFAULT NULL, record_number INT DEFAULT NULL, wording_civility VARCHAR(255) DEFAULT NULL, current_vehicles_owner VARCHAR(255) DEFAULT NULL, name VARCHAR(255) DEFAULT NULL, firstname VARCHAR(255) DEFAULT NULL, track_name VARCHAR(255) DEFAULT NULL, address_complement VARCHAR(255) DEFAULT NULL, city VARCHAR(255) DEFAULT NULL, zip_code INT DEFAULT NULL, home_phone VARCHAR(255) DEFAULT NULL, cell_phone VARCHAR(255) DEFAULT NULL, job_phone VARCHAR(255) DEFAULT NULL, email VARCHAR(255) DEFAULT NULL, date_of_entry_into_circulation DATE DEFAULT NULL, purchase_date DATE DEFAULT NULL, last_event_date DATE DEFAULT NULL, brand_name VARCHAR(255) DEFAULT NULL, model_wording VARCHAR(255) DEFAULT NULL, version VARCHAR(255) DEFAULT NULL, vin VARCHAR(255) DEFAULT NULL, licence_number VARCHAR(255) DEFAULT NULL, lead_type VARCHAR(255) DEFAULT NULL, mileage INT DEFAULT NULL, energy_label VARCHAR(255) DEFAULT NULL, seller_vn VARCHAR(255) DEFAULT NULL, seller_vo VARCHAR(255) DEFAULT NULL, billing_comment VARCHAR(255) DEFAULT NULL, type_vnvo VARCHAR(255) DEFAULT NULL, file_number VARCHAR(255) DEFAULT NULL, sales_intermediary VARCHAR(255) DEFAULT NULL, event_date DATE DEFAULT NULL, event_origin VARCHAR(255) DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB
        SQL);
        $this->addSql(<<<'SQL'
            CREATE TABLE document (id INT AUTO_INCREMENT NOT NULL, filename VARCHAR(255) DEFAULT NULL, updated_at DATETIME DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)', PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB
        SQL);
        $this->addSql(<<<'SQL'
            CREATE TABLE messenger_messages (id BIGINT AUTO_INCREMENT NOT NULL, body LONGTEXT NOT NULL, headers LONGTEXT NOT NULL, queue_name VARCHAR(190) NOT NULL, created_at DATETIME NOT NULL, available_at DATETIME NOT NULL, delivered_at DATETIME DEFAULT NULL, INDEX IDX_75EA56E0FB7336F0 (queue_name), INDEX IDX_75EA56E0E3BD61CE (available_at), INDEX IDX_75EA56E016BA31DB (delivered_at), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB
        SQL);
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql(<<<'SQL'
            DROP TABLE client
        SQL);
        $this->addSql(<<<'SQL'
            DROP TABLE document
        SQL);
        $this->addSql(<<<'SQL'
            DROP TABLE messenger_messages
        SQL);
    }
}
